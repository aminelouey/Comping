import 'package:comping/models/appcolor.dart';
import 'package:comping/screens/NewPasswordScreen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Confirmeotp extends StatelessWidget {
  final Widget distination;
  const Confirmeotp({super.key, required this.distination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: const Text(
              'Confirm OTP',
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
          Gap(50),
          //Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Please confirm your 4 digit OTP. which is sent on this number +1202-555-0174',
              style: TextStyle(fontSize: 17, color: const Color(0xFF71717A)),
            ),
          ),

          //change number
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Change Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Gap(20),
          //Resend OTP
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 10,
                        ),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          hintText: '0000',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 24,
                            letterSpacing: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(30),

          //Send Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => distination),
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
