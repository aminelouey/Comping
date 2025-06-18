import 'dart:async';

import 'package:comping/models/appcolor.dart';
import 'package:comping/models/login_models.dart';
import 'package:comping/screens/LoginScreen.dart';
import 'package:comping/screens/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Welcomscreen extends StatefulWidget {
  const Welcomscreen({super.key});

  @override
  State<Welcomscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Welcomscreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<LoginModels> items = [
    LoginModels(
      title: 'Your Tasks',
      description:
          'I always reminds you about your planned activities. which is always my priority and your importance.',
      image: 'assets/images/image1.svg',
    ),
    LoginModels(
      title: 'Capture Your Memories',
      description:
          "We know that catching photos are necessary in your trip. that's why we have built-in camera and gallery feature.",
      image: 'assets/images/image4.svg',
    ),
    LoginModels(
      title: 'Track Your Fitness',
      description:
          'Fitness is one of the main thing which is really important to your body and we track it in every second.',
      image: 'assets/images/image3.svg',
    ),
    LoginModels(
      title: 'There Is Much More',
      description:
          "We have bunch of other cool features. which is super helpful for your next camping trip. so what are you waiting for?",
      image: 'assets/images/image2.svg',
    ),
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < items.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      setState(() {}); // mettre à jour les cercles
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            SizedBox(
              width: double.infinity,
              height: 500,
              child: PageView.builder(
                controller: _pageController,
                itemCount: items.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            item.image,
                            width: 250,
                            height: 250,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            item.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // points indicateurs dynamiques :
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(items.length, (index) {
                  bool isActive = index == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: isActive ? AppColors.primaryColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            isActive
                                ? AppColors.primaryColor
                                : Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                  );
                }),
              ),
            ),

            // login button
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => LoginScreen()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),

            //Register
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => Signupscreen()),
                      );
                    },
                    child: const Text("Don't have an Account? Register"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
