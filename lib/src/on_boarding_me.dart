import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboardme/utilities/widgets/onboarding_screen/screen_data_widgets.dart';
import 'package:onboardme/utilities/widgets/onboarding_screen/pageIndicator.dart';
import 'package:onboardme/utilities/widgets/onboarding_screen/call_to_action_widget.dart';
import 'package:onboardme/utilities/widgets/onboarding_screen/skip_button.dart';
import 'package:onboardme/utilities/widgets/onboarding_screen/bgBoxDecoration.dart';

/// Making the class that will take all the components to build the onboarding screen
class OnboardingMe extends StatefulWidget {
  /// Number of Pages for the screens
  @required
  int numOfPage;

  /// No of colors you want for your screen
  @required
  int noOfBackgroundColor;

  /// List of background colors => In ascending order
  @required
  List<Color> bgColor = [];

  List<Map<String, String>> screenContent = [];

  /// List of  Call-to-action action
  List<String> ctaText = [];

  /// Bool for Circle Page Indicator
  bool isPageIndicatorCircle = false;

  @required
  String homeRoute;

  /// Class Constructor
  OnboardingMe({
    /// REQUIRED => Number of pages you want
    numOfPage = 3,

    /// REQUIRED => Number of colors you want to use for background -> Linear gradient or Single Color
    noOfBackgroundColor = 4,

    /// REQUIRED => Give values as Color for background
    bgColor = const [
      Color(0xFF3594DD),
      Color(0xFF4563DB),
      Color(0xFF5036D5),
      Color(0xFF5B16D0),
    ],

    /// Call to Action Text for -> Skip and Get Started
    ctaText = const ['Skip', 'Get Started'],

    /// Provide the content for every screen for on-boarding as
    /// Heading | Sub-heading | Image Path(ONLY ASSET IMAGE ACCEPTED TILL WE RELEASE NEW VERSION)
    screenContent = const [
      {
        "Scr 1 Heading": "Screen 1 Heading Goes Here",
        "Scr 1 Sub Heading": "Screen 1 Sub Heading Goes Here",
        "Scr 1 Image Path": "assets/images/onboarding0.png",
      },
      {
        "Scr 2 Heading": "Screen 2 Heading Goes Here",
        "Scr 2 Sub Heading": "Screen 2 Sub Heading Goes Here",
        "Scr 2 Image Path": "assets/images/onboarding1.png",
      },
      {
        "Scr 3 Heading": "Screen 3 Heading Goes Here",
        "Scr 3 Sub Heading": "Screen 3 Sub Heading Goes Here",
        "Scr 3 Image Path": "assets/images/onboarding2.png",
      },
    ],

    /// Page Indicator will have two types
    /// Rounded Rectangle(Default) or Circle(Pass it as true for Circle)
    isPageIndicatorCircle = false,

    /// Provide Home Route where it will land after on-boarding
    homeRoute = '/home',
  }) {
    this.numOfPage = numOfPage;
    this.noOfBackgroundColor = noOfBackgroundColor;
    noOfBackgroundColor == 1
        ? this.bgColor = [Colors.black]
        : this.bgColor = bgColor;
    this.ctaText = ctaText;
    this.screenContent = screenContent;
    this.isPageIndicatorCircle = isPageIndicatorCircle;
    this.homeRoute = homeRoute;
  }

  @override
  _OnboardingMeState createState() => _OnboardingMeState();
}

class _OnboardingMeState extends State<OnboardingMe> {
  /// PageController will control the view of screens
  PageController pageController = PageController(initialPage: 0);

  /// The page viewport is displaying currently
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          decoration: bgBoxDecoration(widget.bgColor),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,

                  /// SKIP Button
                  child: skipButton(
                      text: widget.ctaText[0], homeRoute: widget.homeRoute, context: context),
                ),
                Container(
                  height: 600,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (int page) {
                      /// Setting current page for page indicator
                      setState(() {
                        currentPage = page;
                      });
                    },

                    /// Screen Data
                    children:
                        screenData(widget.numOfPage, widget.screenContent),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  /// Page Indicator
                  children: pageIndicator(widget.numOfPage, currentPage,
                      widget.isPageIndicatorCircle),
                ),
              ],
            ),
          ),
        ),
      ),

      /// Will show Main Call to action on the last page
      bottomSheet: currentPage == widget.numOfPage - 1
          ? callToAction(text: widget.ctaText[1], homeRoute: widget.homeRoute, context: context)
          : Text(''),
    );
  }
}
