import 'package:comping/models/appcolor.dart';
import 'package:comping/screens/ConfirmeOTP-Screen.dart';
import 'package:comping/screens/LoginScreen.dart';
import 'package:comping/screens/SuccesAdmis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 30.0),
              child: SvgPicture.asset('assets/logo/Logo (1).svg'),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 30.0, bottom: 50),
              child: Column(
                children: [
                  // Name
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 52, // Légèrement augmenté pour le confort
                      decoration: BoxDecoration(
                        color: AppColors.inputcolor,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          scrollPhysics: BouncingScrollPhysics(),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 16,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  //Email
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 52, // Légèrement augmenté pour le confort
                      decoration: BoxDecoration(
                        color: AppColors.inputcolor,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          scrollPhysics: BouncingScrollPhysics(),
                          decoration: InputDecoration(
                            hintText: 'exemple@gmail.com',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.lightGreen,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 16,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Gap(20),

                  //Phone
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 52, // Légèrement augmenté pour le confort
                      decoration: BoxDecoration(
                        color: AppColors.inputcolor,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          scrollPhysics: BouncingScrollPhysics(),
                          decoration: InputDecoration(
                            hintText: '+1',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.lightGreen,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 16,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone Number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  //Password
                  Gap(20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 52, // plus confortable
                      decoration: BoxDecoration(
                        color: AppColors.inputcolor,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 6.0,
                          left: 4.0,
                          bottom: 6.0,
                        ),
                        child: TextFormField(
                          obscureText: obscureText,
                          maxLines: 1,

                          scrollPhysics: BouncingScrollPhysics(),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                            ),

                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Gap(15),

                  //Registre button:
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (c) => Confirmeotp(
                                    distination: Succesadmis(
                                      Text:
                                          'Your registration is successful. please go back and log-in.',
                                    ),
                                  ),
                            ),
                          );
                        },
                        child: Text(
                          'Registre',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Gap(10),
                  //Log in button
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),

                        border: Border.all(
                          color: const Color(0xFF84CC16),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFF84CC16),
                          ),
                        ),
                      ),
                    ),
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
