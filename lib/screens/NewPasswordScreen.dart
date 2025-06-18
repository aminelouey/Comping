import 'package:comping/models/appcolor.dart';
import 'package:comping/screens/SuccesAdmis.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Newpasswordscreen extends StatefulWidget {
  const Newpasswordscreen({super.key});

  @override
  State<Newpasswordscreen> createState() => _NewpasswordscreenState();
}

class _NewpasswordscreenState extends State<Newpasswordscreen> {
  @override
  Widget build(BuildContext context) {
    bool obscureText = false;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: const Text(
              'New Password',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

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
          Gap(50),
          //Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Enter your new password below and please don't forget it now. it's important to you to remember your password.",
              style: TextStyle(fontSize: 17, color: const Color(0xFF71717A)),
            ),
          ),
          Gap(20),
          //Password
          Gap(30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Set Password',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
              ),
            ),
          ),
          Gap(7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 52, // plus confortable
              decoration: BoxDecoration(
                color: AppColors.inputcolor,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 6.0, left: 4.0, bottom: 6.0),
                child: TextFormField(
                  obscureText: obscureText,
                  maxLines: 1,

                  scrollPhysics: BouncingScrollPhysics(),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
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
          Gap(30),

          //Send Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (c) => Succesadmis(
                          Text:
                              'Your Password changed successfully. please go back and log-in.',
                        ),
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
