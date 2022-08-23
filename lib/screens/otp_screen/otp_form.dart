import 'package:flutter/material.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/size_config.dart';
//
// import '../../../constants.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50),
        child: Column(
          children: [
            const SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                      nextField(value, pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) => nextField(value, pin3FocusNode),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) => nextField(value, pin4FocusNode),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((15)),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        pin4FocusNode!.unfocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: const Color(0xffF78143),
                ),
                onPressed:(){
                  Navigator.pushNamed(context, '/successLogin_screen');
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
            )
          ],
        ),
      ),
    );
  }
}