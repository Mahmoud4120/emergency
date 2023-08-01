import 'dart:async';

import 'package:emergency/login/Login_Screen.dart';
import 'package:emergency/models/splash_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final AnimationController _slideController;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      animationBehavior: AnimationBehavior.preserve,
      value: 1,
      vsync: this,
    )..repeat(reverse: true);

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 1.0),
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.ease),
    );

    Timer(
      const Duration(milliseconds: 10000),
      () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen(),
            ),
            (route) => false);
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: 300,
            ),
            duration: const Duration(milliseconds: 3000),
            builder: (BuildContext context, double? value, Widget? child) =>
                Container(
              color: Colors.white,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeTransition(
                  opacity: _animation,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    'assets/image/two.jpg',
                    height: 300,
                    width: 300,
                  ),
                ),
                SizedBox(height: 15,),
                SlideTransition(
                  position: _slideAnimation,
                  child: DefaultText(
                    text: 'EMERGENCY',
                    color: Colors.blue,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
