import 'dart:async';

import 'package:comping/models/appcolor.dart';
import 'package:comping/models/login_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool is_selected = false;

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
          " We know that catching photos are necessary in your trip. that's why we have built-in camera and gallery feature.",
      image: 'assets/images/image4.svg',
    ),
    LoginModels(
      title: 'Track Your Fitness',
      description:
          'Fitness is one of the main thing which is really inportant to your body and we track it in every second.',
      image: 'assets/images/image3.svg',
    ),
    //
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
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < items.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
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
            GestureDetector(
              onTap: () {
                _timer
                    .cancel(); // L’utilisateur interagit, on arrête le scroll auto
              },
              child: SizedBox(
                width: double.infinity,
                height: 500,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image
                          Center(
                            child: SvgPicture.asset(
                              item.image,
                              // items[1].image,
                              width: 250,
                              height: 250,
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Title
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
                          // Description
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              item.description,

                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            // points:
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(maxRadius: 5, backgroundColor: Colors.green),
                  Gap(10),
                  CircleAvatar(maxRadius: 5, backgroundColor: Colors.green),
                  Gap(10),
                  CircleAvatar(maxRadius: 5, backgroundColor: Colors.green),
                  Gap(10),
                  CircleAvatar(maxRadius: 5, backgroundColor: Colors.green),
                ],
              ),
            ),

            // login button
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 30.0, right: 8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor,
                  ),
                  child: Center(
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
            Gap(10),
            //signup
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text("Don't have an Account? Register"),
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
