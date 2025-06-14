import 'dart:async';

import 'package:comping/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Délai de 3 secondes avant de naviguer vers HomePage
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF84CC16),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/logo/logo (2).svg'),
              Gap(15),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text(
                  'Makes your camping more easy, next',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Gap(2),
              Padding(
                padding: const EdgeInsets.only(right: 38.0),
                child: Text(
                  ' level. and helps you to follow your',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Gap(2),
              Padding(
                padding: const EdgeInsets.only(right: 38.0),
                child: Text(
                  ' plannings.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
