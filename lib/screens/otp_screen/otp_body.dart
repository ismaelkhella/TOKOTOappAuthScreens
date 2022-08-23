import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      ListView(
        children: [
          const SizedBox(height: 20),
          const Text(
            'OTP Verification',
            style: TextStyle(
                fontSize: 28,
                fontFamily: 'Muli',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Text(
            "We sent your code to +1 898 860 ***",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff757575),
              fontFamily: 'Muli',
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          buildTimer(),
          SizedBox(height: 40,),
          const OtpForm(),
        ],
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {

              },
              child: const Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      )
    ]);
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "This code will expired in ",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff757575),
            fontFamily: 'Muli',
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 59.0, end: 00.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            " 00:${value.toInt()}",
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xffFF2C54),
              fontFamily: 'Muli',
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
