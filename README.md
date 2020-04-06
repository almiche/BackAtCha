# BackAtCha
Oh hey! Didn't see you there! Did I tell you about the time my friend [@jusleg](https://github.com/jusleg) accidentally ordered me some "Ben and Jerry's Cookies Dough Ice Cream" © and how I then promplty reciprocated with 3 "SpongeBob Squarepants" © popsickles... Oh what's that you don't care? You're just here to find out what this repo is about? Well that's kinda rude but ok...

## What is this ?

Ok picture this the other day I was taking my daily scheduled self isolation walk, if you're looking at this repo in the year 2133 and wondering what the hell is a social isolation walk here's a diagram to show you what the looks like in a bit more detail:
![social distancing](https://user-images.githubusercontent.com/14715156/78517320-c9059580-778a-11ea-9184-8854bc7bb4ff.png)
Technically speaking this involves the following:
- You maintain at least 6 ft of distance from any living being
- You muffle any semblance of a cough because otherwise people will look at you like you're a zombie
- You awe at how empty the streets are
- You post a story on the gram with the #stayhome tag to let everyone know that you're being active and they're not

But back to this, this repo. So on said walk I started thinking to myself "What if you could UNO© Reverse Card a DDOS attacker by sending them back a giant packet over http from any Rack based application?" and then I thought "You're fairly decent at Ruby why not!". So that's when I embarked on a wild coding flurry that night. I wanted to make sure that this middleware was tested to the nines. So I bootstrapped a quick testing framework using Sinatra, Mocha and Rack's MockRequest tooling in order to simulate incoming http request. 

Essentially what this middleware does is it grabs any incoming http request and checks for the Device-Memory header and then using Famingo Labs' patent pending memoization technology grabs the response coming out of the Rack app in question and multiplies the payload until it matches the requestee's Device-Memory size. So I finished writing all of this code up, with 100% code coverage, complete with rake tasks for automation, 0 errors with RuboCop and ready to take on the world.

I then messaged my friend [@jusleg](https://github.com/jusleg) and it went a little something like this:
```
Me: yo dawg get ready soon next level gem incoming [100% code coverage](https://user-images.githubusercontent.com/14715156/78518827-898d7800-778f-11ea-9477-0ac91edb47c1.png) it'll have static analysis
Justin: what gem
Me: brand new gem being created rn
Justin: what purpose
Me: oufffff you will know soon
Justin: are you even using sorbet
Me: ahhhh shit I should damn it
Justin: Watch this great wholesome tiktok
Me: Here's a link to a great article I was reading the other day in the economist on hyperparameters
Justin: Read it already
Justin: Wait a minute aren't browsers already resillient against large http packets being shot at them
Me: That's a good point but what about this [this](https://www.youtube.com/watch?v=l6quREmoPVM)
Justin: I could go for some five guys for sure
Me: Also according to this screenshot there might be a chance for this thing afterall (below)
```
![91786965_2409725105794815_5397424103109951488_n](https://user-images.githubusercontent.com/14715156/78518495-a4abb800-778e-11ea-88b5-04d42b08fb04.png)

And with that I kept pressing forward, created some more tests for extra resiliency and even created some github actions to push this useless gem onto rubygems. 

## Did I actually try this on a real rack app?

Nope, because 100% code covered unit testing is enough isn't it?

## What's next?

As for me, I'm going to playing around with my new guitar and taking some more self isolation walks. As for the gem, I'm going to be adding in sorbet type checking and making sure it works with TruffleRuby.

## The Pivot
After discussing this further with [@jusleg](https://github.com/jusleg) we've come to the conclusion that a more pressing right now is creating a service which would allow blog writers to embed ModelViews into Medium articles. So look out for that next time you write a Medium article.
