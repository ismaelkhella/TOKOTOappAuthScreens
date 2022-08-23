import 'package:flutter/material.dart';

class SuccessLoginScreen extends StatefulWidget {
  const SuccessLoginScreen({Key? key}) : super(key: key);

  @override
  State<SuccessLoginScreen> createState() => _SuccessLoginScreenState();
}

class _SuccessLoginScreenState extends State<SuccessLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Login Success',
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
          icon: const Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 60),
                child: Image.asset('assets/images/success.png'),
              ),
              const Text(
                'Login Success',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Now you\'re ready to go shopping',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w200,
                    color: Color(0xff757575)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Positioned(
            right: 80,
            left: 80,
            bottom: 40,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/completeProfile_screen');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(double.infinity, 56),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Color(0xffFF7643),
              ),
              child: const Text(
                'Back to home',
                style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
