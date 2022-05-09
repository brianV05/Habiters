<img src="GYST.png" width=250><br>
# GYST - GET YA S***T TOGETHER

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
GYST is a habit tracker app that helps you to build good habits, reach your goals.
It will remind you when needed, track habits with stats and notes, analyze habits with charts, therefore reach your goals at ease. It is also the first habit app that let you and your friends build habit together by remind and encouraging each other.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Productivity
- **Mobile:** GYST standout habit tracking app for iphone users. It's simple and quick to use, while offering enough options for trakccing any kind of habit, based around the idea of building and maintaining a habit streak.
- **Story:** GYST enables you to track daily, weekly, and monthly habits. When you tap the "Add Task" button, you can choose from a present option like "walk the dog" or "eat a healthy meal" or even create your own custom habit. Whichever way you go, you'll be able to set the habit as due on a certain number of days per week or per month, on specific days of the week, or recurring every few days. 
- **Market:** Any individual can use this app to better organize and track their days. 
- **Habit:** This app can be used as often or unoften as the user wanted depending on how an individual's daily lives.
- **Scope:** 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can customize their own habits
* User can add and delate habits
* User can specify each habit daily, weekly, monthly 
* Setting page (Accesibiliy, Notification,etc)


**Optional Nice-to-have Stories**

* Habit tracker(charts, graphs, and percentages)
* Profile of user (an overall of user process for each habit)
* Including a calendar


## 2. Screen Archetypes
* Login 
  * User signs up or logs into their account
* Home page
  * After login user has access to home page
  * In home page, user can see list of their habits for the day or add a habit.
* Habit Stats
  * A calendar will show user how they did that month. 
  * There will be statistics of overall rate, the number of perfect days, habits done, and daily average of the month.
* Add friends
  * Tap add button to invite a friend from their contacts to share habits with.
* Setting
  * Customize the appearance of the app


## 3. Navigation
**Tab Navigation** (Tab to Screen)

* Home Screen(habits)
* Habit Stat
* Add friends
* Settings


**Flow Navigation** (Screen to Screen)

* Login->Forgot password screen 
* Homepage -> Add Habit
* Habit Stat
* Add friends->text or email contact
* Settings-> toggle settings 

   
## Wireframes
<img src="https://user-images.githubusercontent.com/70337936/162648714-68fc5946-528c-42a0-889c-f9684b6ab27d.jpg " width=600>
## Schema 
[This section will be completed in Unit 9]
### Models

|  Property   |    Type    |         Description          |
|-------------|------------|------------------------------|
|  Objectid   |   String   | Id for user's custom habit   |
|  Caption    |   String   | Caption by the user          |
|  createdAt  |  Datatime  | date when user created habit |
|  updateAt   |  Datatime  | date when user delete or update current habit |

 
### Networking
- Home Feed Screen
   - (Read/Get) Gets to see habit user created
   - (Create/POST) Add and customize habits
   - (Delete) delete habit already completed

### Implementations

#### Calender

<img src="calender-gif.gif" width=250><br>
```
This Calender was created to block out days for anything specific related. 
For example the purple was used for a studying day and it would block out the days that I choose. 
```
<img src="updated-calender.png" width=250><br>

```
This part was supposed to show the color co-ordinated updates on your day to day tasks. 
So the green here is showing the days you have motivated. 
The gray shows a rest day and the red are days you missed out on. 
The flag shows the intended goal. 
The time for how much you wish to allocate each day and the streaks for consecutive days you accomplished your goals.
```
