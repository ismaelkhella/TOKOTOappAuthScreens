import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/outBoardingView_screens');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: 36,
              fontFamily: 'Muli',
              fontWeight: FontWeight.bold,
              color: Color(0xffFF7643)),
        ),
      ),
    );
  }
}
