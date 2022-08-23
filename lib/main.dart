import 'package:flutter/material.dart';
import 'package:infinitetech/screens/OTPVerification_screen.dart';
import 'package:infinitetech/screens/completeProfile_screen.dart';
import 'package:infinitetech/screens/forgetPassword_screen.dart';
import 'package:infinitetech/screens/login_screen.dart';
import 'package:infinitetech/screens/launch_screen.dart';
import 'package:infinitetech/screens/otp_screen/otp_screen.dart';
import 'package:infinitetech/screens/otp_screen/success_login.dart';
import 'package:infinitetech/screens/outbording.dart';
import 'package:infinitetech/screens/setPassword_screen.dart';
import 'package:infinitetech/screens/signUp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/outBoardingView_screens': (context) => outpordingview(),
        '/login_screen': (context) => LoginScreen(),
        '/signUp_screen': (context) => SignUpScreen(),
        '/completeProfile_screen': (context) => CompleteProfileScreen(),
        '/OTPVerification_screen': (context) => OtpScreen(),
        '/successLogin_screen': (context) => SuccessLoginScreen(),
        '/forgetPassword_screen': (context) => ForgetPasswordScreen(),
        '/setPassword_screen': (context) => SetPasswordScreen(),
        // '/home_screen':(context)=>HomeScreen(),
      },
    );
  }
}
