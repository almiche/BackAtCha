# BackAtCha ![BackAt](https://img.shields.io/badge/BackAt%3F-Cha-brightgreen) [![Gem Version](https://badge.fury.io/rb/BackAtCha.svg)](https://badge.fury.io/rb/BackAtCha) ![downloads](https://img.shields.io/gem/dt/BackAtCha) ![Tests](https://github.com/almiche/BackAtCha/workflows/Tests/badge.svg?branch=master) ![Code Cov == 100%](https://github.com/almiche/BackAtCha/workflows/Code%20Cov%20==%20100%25/badge.svg?branch=master) ![Lint](https://github.com/almiche/BackAtCha/workflows/Lint/badge.svg?branch=master) [![license](https://img.shields.io/badge/LICENSE-MIT-blue)](https://github.com/almiche/BackAtCha/blob/master/LICENSE) ![bullshit?](https://img.shields.io/badge/bullshit%3F-none-red)
Oh hey! Didn't see you there! Did I tell you about the time my friend [@jusleg](https://github.com/jusleg) accidentally ordered me some "Ben and Jerry's Cookies Dough Ice Cream" © and how I then promplty reciprocated with 3 "SpongeBob Squarepants" © popsickles... Oh what's that you don't care? You're just here to find out what this repo is about? Well that's kinda rude but ok...

<img src="https://user-images.githubusercontent.com/14715156/78526515-3ecc2a00-77a8-11ea-9517-9d8ffeca7251.png" data-canonical-src="https://user-images.githubusercontent.com/14715156/78526515-3ecc2a00-77a8-11ea-9517-9d8ffeca7251.png" height="300" />

## What is this ?

Ok picture this the other day I was taking my daily scheduled self isolation walk, if you're looking at this repo in the year 2133 and wondering what the hell is a social isolation walk here's a diagram to show you what the looks like in a bit more detail:
![social distancing](https://user-images.githubusercontent.com/4406751/79282765-056c7c00-7e84-11ea-9697-80b6d60e3c84.png)
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

|**Records**|**Download Time\***|**Chrome (OS X)**|**Firefox (OS X)**|**Safari (OS X)**|**IE9 (Win 7)**|
|---|---|---|---|---|---|
|**1,000,000 (153.37MB)**|19:51|**DOM Ready:** 16.4s<br>**RAM:** 1.09GB<br>**Loading:** browser hang<br>**Loaded:** usable, 1 tab crash|**DOM Ready:** 14.29s<br>**RAM:** 1.82GB<br>**Loading:** untestable<br>**Loaded:** usable|**DOM Ready:** 5.13s<br>**RAM:** 1.76GB<br>**Loading:** browser hang<br>**Loaded:** usable|Data failed to load and browser became unresponsive.<br><img src="https://media.giphy.com/media/l0HTYUmU67pLWv1a8/giphy.gif" alt="nice" width=80>| 
|**750,000 (115.13MB)**|14:54|**DOM Ready:** 12.24s<br>**RAM:** 727.3MB<br>**Loading:** browser hang<br>**Loaded:** usable|**DOM Ready:** 13.8s<br>**RAM:** 1.48GB<br>**Loading:** browser hang<br>**Loaded:** usable|**DOM Ready:** 3.82s<br>**RAM:** 1.39GB<br>**Loading:** barely usable<br>**Loaded:** usable|Data failed to load and browser became unresponsive.<br><img src="https://media.giphy.com/media/Ls6ahtmYHU760/giphy.gif" alt="nice" width=80>|
|**500,000 (76.69MB)**|9:56|**DOM Ready:** 9.13s<br>**RAM:** 512.0MB<br>**Loading:** browser hang<br>**Loaded:** usable|**DOM Ready:** 12.19s<br>**RAM:** 1.14G<br>**Loading:** browser hang<br>**Loaded:** usable|**DOM Ready:** 2.49s<br>**RAM:** 1.02GB<br>**Loading:** usable<br>**Loaded:** usable|Data failed to load and browser became unresponsive.<br><img src="https://media.giphy.com/media/fs6rnt1K0YyVWRXNwY/giphy.gif" alt="nice" width=80>|

Data from https://joshzeigler.com/technology/web-development/how-big-is-too-big-for-json

And with that I kept pressing forward, created some more tests for extra resiliency and even created some github actions to push this useless gem onto rubygems. 

## Did I actually try this on a real rack app?

Nope, because 100% code covered unit testing is enough isn't it?

## What's next?

As for me, I'm going to playing around with my new guitar and taking some more self isolation walks. As for the gem, I'm going to be adding in sorbet type checking and making sure it works with TruffleRuby.

## The Pivot
After discussing this further with [@jusleg](https://github.com/jusleg) we've come to the conclusion that a more pressing right now is creating a service which would allow blog writers to embed ModelViews into Medium articles. So look out for that next time you write a Medium article.

