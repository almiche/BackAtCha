# frozen_string_literal: true

class BackAtCha
  def initialize(app)
    @app = app
    @previous_bodies = {}
  end

  def call(env)
    status, @headers, body = @app.call(env)
    if env['Device-Memory']
      body = gettem(
        size_in_gb: Float(env['Device-Memory']),
        body: body,
        content_type: env['Content-Type']
      )
    else
      @headers['Accept-CH'] = 'Device-Memory'
      @headers['Accept-CH-Lifetime'] = '86400'
    end
    [status, @headers, body]
  end

  def gettem(size_in_gb:, body:, content_type:)
    size_in_bytes = size_in_gb * 10**9
    return body unless body.last.is_a?(String)

    key = size_in_gb.to_s + content_type
    return [@previous_bodies[key]] if @previous_bodies[key]

    response = body.last
    response += "#{body}\n" while response.bytesize <= size_in_bytes
    @previous_bodies[key] ||= response
    [response]
  end
end
