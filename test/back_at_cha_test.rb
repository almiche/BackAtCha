# frozen_string_literal: true

require('../lib/back_at_cha')
require('test/unit')
require('mocha/test_unit')
require('rack')
require('sinatra/base')

class BackAtChaTest < Test::Unit::TestCase
  def mocha_setup
    @back_at_cha = BackAtCha.new(MyApp.new)
    @mock_request = Rack::MockRequest.new(@back_at_cha)
    super
  end

  def test_a_request_without_device_memory_header_will_have_it_requested
    response = @mock_request.get('/')
    assert((response.headers.keys & %w[Accept-CH Accept-CH-Lifetime]).any?)
  end

  def test_a_request_with_device_memory_will_have_a_package_return_same_size
    headers = {
      "Device-Memory": '0.25'
    }
    @back_at_cha.expects(:gettem).once.with(
      size_in_gb: 0.25,
      body: ['Put this in your pipe & smoke it!'],
      content_type: nil
    )
    @mock_request.get('/', headers)
  end

  def test_memoize_wont_happen_different_content_types_requested
    json = @mock_request.get('/json', {})
    expected_size_in_gb = 5 * 10**-7

    json_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [json.body],
      content_type: json.headers['Content-Type']
    )

    html_response = @mock_request.get('/html', {})
    html_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [html_response.body],
      content_type: html_response.headers['Content-Type']
    )

    assert_not_equal(json_body, html_body)
  end

  def test_memoize_return_same_response_when_same_content_type_applied
    original = @mock_request.get('/', {})
    expected_size_in_gb = 5 * 10**-7

    original_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [original.body],
      content_type: original.headers['Content-Type']
    )

    alternate_response = @mock_request.get('/alternate', {})
    alternate_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [alternate_response.body],
      content_type: alternate_response.headers['Content-Type']
    )

    assert_equal(original_body, alternate_body)
  end

  def test_gettem_will_return_if_body_does_not_contain_a_string
    non_string_body = [Object.new]
    assert(@back_at_cha.gettem(
      size_in_gb: 0.25,
      body: non_string_body,
      content_type: 'application/bullcrap'
    ).is_a?(Object))
  end

  def test_gettem_will_returns_correct_size_package_with_html_response
    response = @mock_request.get('/html', {})
    expected_size_in_bytes = 500
    expected_size_in_gb = 5 * 10**-7

    new_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [response.body],
      content_type: response.headers['Content-Type']
    )

    assert(new_body.last.is_a?(String))
    assert(expected_size_in_bytes <= new_body.last.bytesize)
  end

  def test_gettem_will_returns_correct_size_package_with_json_response
    response = @mock_request.get('/json', {})
    expected_size_in_bytes = 500
    expected_size_in_gb = 5 * 10**-7

    new_body = @back_at_cha.gettem(
      size_in_gb: expected_size_in_gb,
      body: [response.body],
      content_type: response.headers['Content-Type']
    )

    assert(new_body.last.is_a?(String))
    assert(expected_size_in_bytes <= new_body.last.bytesize)
  end
end

class MyApp < Sinatra::Base
  get '/' do
    'Put this in your pipe & smoke it!'
  end

  get '/alternate' do
    'Be the change you want to see in the world'
  end

  get '/html' do
    erb :test
  end

  get '/json' do
    content_type :json
    { foo: 'bar' }.to_json
  end
end
