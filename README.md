# On-Board Me
A flutter package that helps you create on-boarding screen for your project with minutes just by passing a few parameters.

## Why We Build?
Can you build an **On-boarding screen within minutes** for your app? This is where we help you do that.


![Build Status](https://img.shields.io/badge/Build-Passing-blue) ![Build Status](https://img.shields.io/badge/Release-V1.0-green)  ![Build Status](https://img.shields.io/badge/license-MIT-red)  ![Build Status](https://img.shields.io/badge/Contribution-Open-Yellow)  ![Build Status](https://img.shields.io/badge/Platform-Flutter-orange) ![Build Status](https://img.shields.io/badge/Language-Dart-DarkPink)

## Screenshots

<img src="https://raw.githubusercontent.com/imsks/On-Board-Me/master/screenshots/on-board-me-1.jpeg"  height = "400" alt="PieChart"> <img src="https://raw.githubusercontent.com/imsks/On-Board-Me/master/screenshots/on-board-me-2.jpeg"  height = "400" alt="PieChart"> <img src="https://raw.githubusercontent.com/imsks/On-Board-Me/master/screenshots/on-board-me-3.jpeg"  height = "400" alt="PieChart">

## Usage

### Import this class

```dart
import 'package:onboardme/src/on_boarding_me.dart';
```
### Add the On-Boarding screen
```dart
OnboardingMe(
      /// Number of Pages for the screens
      numOfPage: 5,

      /// No of colors you want for your screen
      noOfBackgroundColor: 4,

      /// List of background colors => In descending order
      bgColor: [
        Color(0xFF3594DD),
        Color(0xFF4563DB),
        Color(0xFF5036D5),
        Color(0xFF5B16D0),
      ],

      /// List of  Call-to-action action
      ctaText: [
        'Skip',
        'Get Started'
      ],

      /// List that maps your screen content
      screenContent: [
        {
          "Scr 1 Heading" : "Screen 1 Heading Goes Here",
          "Scr 1 Sub Heading" : "Screen 1 Sub Heading Goes Here",
          "Scr 1 Image Path" : "assets/images/onboarding0.png",
        },
        {
          "Scr 2 Heading" : "Screen 2 Heading Goes Here",
          "Scr 2 Sub Heading" : "Screen 2 Sub Heading Goes Here",
          "Scr 2 Image Path" : "assets/images/onboarding1.png",
        },
        {
          "Scr 3 Heading" : "Screen 3 Heading Goes Here",
          "Scr 3 Sub Heading" : "Screen 3 Sub Heading Goes Here",
          "Scr 3 Image Path" : "assets/images/onboarding2.png",
        },
      ],

      /// Bool for Circle Page Indicator
      isPageIndicatorCircle: true,

      /// Home Screen Route that lands after on-boarding
      homeRoute: '/Home/',
    );
```

## Features
- You can customize your on boarding screens with content and styling.

## TODO
1. - [ ] Add new on boarding screens
2. - [ ] Add animation on the screens

## Contribution
**The project is open for contribution. Anyone willing to code fresh on-boarding screens, customize content for users will be welcomed.**
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request