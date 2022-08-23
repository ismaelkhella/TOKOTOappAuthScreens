import 'package:flutter/material.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  late TextEditingController _emailTextController;
  String? _emailError;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Forget Password',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Muli',
            fontWeight: FontWeight.w600,
            color: Color(0xff757575),),
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
          children:[ ListView(
            children: [
              const Text(
                'Confirm Password',
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
                'Please enter your new password ',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff757575),
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 120,
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
                    'Password',
                    style: TextStyle(
                        color: Color(0XFF757575),
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                  suffixIcon: const Icon(Icons.lock_outline),
                  alignLabelWithHint: true,
                  hintText: 'Enter your password',
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
                      const BorderSide(width: 1, color: Colors.black)),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      const BorderSide(width: 1, color: Colors.black)),
                  fillColor: Colors.grey,
                  // TextField Background Color
                ),
              ),
              const SizedBox(
                height: 80,
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
              child: Row(
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
                      ))
                ],
              ),
            ),

          ]
        ),
      ),
    );
  }
}
