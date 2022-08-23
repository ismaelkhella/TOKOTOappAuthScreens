import 'package:flutter/material.dart';
import 'otp_body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Muli',
              fontWeight: FontWeight.w600,
              color: Color(0xff757575)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
        ),
      ),
      body: Body(),
    );
  }
}