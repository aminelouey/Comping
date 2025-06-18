import 'package:comping/models/appcolor.dart';
import 'package:comping/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Succesadmis extends StatefulWidget {
  final String? Text;
  const Succesadmis({super.key, this.Text});

  @override
  State<Succesadmis> createState() => _SuccesadmisState();
}

class _SuccesadmisState extends State<Succesadmis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/image5.svg'),
            Gap(15),
            Text(
              'Hurrey',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Gap(10),
            //description
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Text(
                textAlign: TextAlign.center,

                '${widget.Text}',
                style: TextStyle(color: Colors.grey.shade800, fontSize: 18),
              ),
            ),
            //GO back button
            Gap(10),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
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
                      'Go Back',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
