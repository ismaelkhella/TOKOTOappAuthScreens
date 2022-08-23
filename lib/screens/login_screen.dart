import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  String? _emailError;
  String? _passwordError;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Sign In',
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
        child: Stack(
          children: [
            ListView(
              children: [
                const Text(
                  'Welcome Back',
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
                  'Sign in with your email and password \nor continue with social media',
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
                TextField(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorText: _emailError,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),

                    label: const Text(
                      'Email',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                    suffixIcon: const Icon(Icons.email_outlined),
                    alignLabelWithHint: true,
                    hintText: 'Enter your email',
                    hintStyle: const TextStyle(
                      color: Color(0XFF757575),
                      fontFamily: 'Muli',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    prefix: const Text('    '),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey)),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                    fillColor: Colors.grey,
                    // TextField Background Color
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TextField(
                  controller: _passwordTextController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      errorText: _passwordError,
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1)),
                      label: const Text(
                        'Password',
                        style: TextStyle(
                            color: Color(0XFF757575),
                            fontFamily: 'Muli',
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      hintText: 'Enter your password',
                      prefix: const Text('    '),
                      hintStyle: const TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: const Color(0xff00C8E8),
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                                color: Color(0xff646464),
                                fontSize: 14,
                                fontFamily: 'Muli'),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgetPassword_screen');
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 56.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF7643),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  //margin : const EdgeInsets.only(left: 50),
                  child: MaterialButton(
                    onPressed: () {
                      // performLoginShopOwners();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/FacebookSignIn.png'),

                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/GoogleSignIn.png'),

                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/TwitterSignIn.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            color: Color(0xff808080),
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUp_screen');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffF78143),
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
