import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
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
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30.0),
            height: double.infinity,
            child: ListView(
              children:[
              const Text(
                'OTP Verification',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'We sent your code to +1 898 860 ***\nThis code will expired in 00:30',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff757575),
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
                Row(
                  children: [
                    TextField(
                      // controller: ,
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                    TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                    TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                    TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                  ],
                )
              ],
            ))
    );
  }
}
