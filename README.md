# Backend Coding Challenge

Thanks so much for your interest in working at [Lufthansa Innovation Hub](https://lh-innovationhub.de/) as a [Senior backend developer](https://weworkremotely.com/remote-jobs/lufthansa-innovation-hub-senior-backend-developer-ruby)! Below is a challenge we'd like to have you do. The primary purpose of this is to understand how you solve engineering challenges.

**You should spend no more than 1 hour on this project.**

## 🔐 The challenge

We are building a mini app to list airports. The UI is ready, but we need to build the backend.

Your challenge is to:

- Create and seed the database
- Seed airports and check that the number reported is correct using Rails console
- Write required routes + endpoint that returns airports
- Add params to return airports only for specific countries
- Build pagination using [`Pagy`](https://ddnexus.github.io/pagy/how-to#quick-start&gsc.tab=0)
- There are lots of non-relevant (small) airports, make sure the most relevant airports are returned first. Required data is already in the model.
- Add specs to test what you normally would in such an app

We want to build an app by Rails standards with specs. Database search must be fast even if there would be millions of airports.

## 🧠 Assumptions

- Airport model already exists together with code for seeding airports
- Front-end exists, it will use airports endpoint and also provides `countries` parameter

## 📦 Deliverables

As an asynchronous company, this test project will be done asynchronously. Please record your screen and talk us through the coding exercise as you work through it. Don't hesitate to think out loud—that's the interesting part!

Ultimately, it's more important for us to understand your thought process and why you make the decisions you do. You can record & deliver the video in whatever format you prefer: Loom, unlisted YouTube video, …

**Reply to your job application email thread with your solution to the challenge and we'll go from there!**

## ✍️ Next steps

After this coding challenge, we'll review your submission carefully and get back to you with our feedback. If we liked it, we'll reach out to schedule one more additional call with some of your future team members to see if we'd be a great match. If that call goes well, you can expect an offer in your inbox. If you have any additional questions before starting on this coding challenge, don't hesitate to ask!

## 💨 Let's go!

The app is designed to work out of the box with no external dependencies, other than gems and Node modules.

```shell
bundle install
yarn install
```

### Running locally

#### Frontend

```
./bin/webpack-dev-server
```

#### Backend

```shell
rails s
```

Once started, the app should be available via http://localhost:3000
#backend code_challenge rails
