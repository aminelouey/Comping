import 'package:comping/models/appcolor.dart';
import 'package:comping/screens/ConfirmeOTP-Screen.dart';
import 'package:comping/screens/NewPasswordScreen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Forgotpasswordscreen extends StatelessWidget {
  const Forgotpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 22.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 26,
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Gap(30),
          //Description
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: Text(
              'To get your new password you need to put your phone number down below. and we will send you an OTP on that number for confirmation.',
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 1,

                color: const Color(0xFF71717A),
              ),
            ),
          ),
          Gap(20),
          //Phone number
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Gap(5),
                Container(
                  width: double.infinity,
                  height: 60, // plus confortable
                  decoration: BoxDecoration(
                    color: AppColors.inputcolor,
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '+1',

                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(20),

          //Send Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            Confirmeotp(distination: Newpasswordscreen()),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
