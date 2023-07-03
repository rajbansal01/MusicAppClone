// import 'package:carepay/components/fade_slide_transition.dart';
// import 'package:carepay/res/color.dart';
// import 'package:carepay/screens/doctorScreens/instantLoanWelcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/animation_builder/mirror_animation_builder.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WelcomeState();
  }
}

class WelcomeState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _formElementAnimation;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    final fadeSlideTween = Tween<double>(begin: 0.0, end: 1.0);

    _formElementAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.4,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));
    _animationController.forward();
    super.initState();
  }

  // state variables
  var screen = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final space = height > 650 ? 8.0 : 16.0;

    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: SizedBox(
            //     child: Image.asset('assets/images/carePayLogo.png'),
            //   ),
            //   centerTitle: true,
            //   automaticallyImplyLeading: false,
            //   backgroundColor: Colors.white,
            //   elevation: 0,
            // ),
            backgroundColor: Colors.black,
            body: Padding(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 0 * fem),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 2,
                          // group167cge (455:270)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 15 * fem, 0 * fem, 15 * fem),
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12 * fem),
                          ),
                          // child:
                          // FadeSlideTransition(
                          //     animation: _formElementAnimation,
                          //     additionalOffset: space,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                       'images/music.png'
                                      // : 'assets/images/icRetention.png'
                                )
                                ],
                              )
                          ),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              // group167cge (455:270)
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 5 * fem, 0 * fem, 5 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              // child: FadeSlideTransition(
                              //     animation: _formElementAnimation,
                              //     additionalOffset: space,
                              //     child: Text(
                              //       screen == 1
                              //           ? 'Grow your revenue'
                              //           : 'Increased Patient Retention',
                              //
                              //       textAlign: TextAlign.center,
                              //       style: TextStyle(
                              //           height: 1.2 * fem,
                              //           color: Colors.purple,
                              //           fontSize: 32 * fem,
                              //           fontWeight: FontWeight.w500),
                              //     )
                              // )
                          ),
                          Container(
                              // group167cge (455:270)
                              padding: EdgeInsets.fromLTRB(
                                  30 * fem, 0 * fem, 30 * fem, 0 * fem),
                              margin: EdgeInsets.fromLTRB(
                                  20 * fem, 5 * fem, 20 * fem, 5 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              // child: FadeSlideTransition(
                              //     animation: _formElementAnimation,
                              //     additionalOffset: space,
                              //     child: Text(
                              //       screen == 1
                              //           ? 'Enable your patients with CarePay instant loan and get paid timely.'
                              //           : 'Enable your patients with CarePay.',
                              //       textAlign: TextAlign.center,
                              //       style: TextStyle(
                              //           color: Colors.black,
                              //           height: 1.26 * fem,
                              //           fontSize: 14 * fem,
                              //           fontWeight: FontWeight.w400),
                              //     )
                              // )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              MirrorAnimationBuilder<double>(
                                tween: Tween(
                                    begin: 0,
                                    end: 5), // value for offset x-coordinate
                                duration: const Duration(seconds: 1),
                                curve: Curves
                                    .easeInOutSine, // non-linear animation
                                builder: (context, value, child) {
                                  return Transform.translate(
                                    offset: Offset(0,
                                        value), // use animated value for x-coordinate
                                    child: child,
                                  );
                                },
                                // child: FadeSlideTransition(
                                //   animation: _formElementAnimation,
                                //   additionalOffset: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      if (screen < 2) {
                                        setState(() {
                                          screen += 1;
                                        });
                                      } else {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeftWithFade,
                                              child:
                                                  MyLogin()),
                                        );
                                      }
                                    },
                                    child: Container(
                                        // group167cge (455:270)
                                        padding: EdgeInsets.fromLTRB(0 * fem,
                                            10 * fem, 0 * fem, 10 * fem),
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            15 * fem, 0 * fem, 10 * fem),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 5,
                                              offset: Offset(-5, 0),
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                Color(0xffECEBFF),
                                                Color(0xffDAD9E7),
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                        ),
                                        child: Text(
                                          "For Wavy Experience",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 16 * fem,
                                              fontWeight: FontWeight.w700),
                                        )),
                                  ),
                                // ),
                              ),
                              SizedBox(
                                width: 1,
                                height: 15 * fem,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.8,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffD8D7E7),
                                        offset: Offset(0, 0),
                                        blurRadius: 17,
                                        spreadRadius: 8,
                                        blurStyle: BlurStyle.normal),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}
