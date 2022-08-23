import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
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
          'Sign Up',
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
                  'Complete Profile',
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
                  'Complete your details or continue \nwith social media',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.normal,
                      color: Color(0xff757575)),
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
                      'First Name',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                    suffixIcon: const Icon(Icons.person_outline_rounded),
                    alignLabelWithHint: true,
                    hintText: 'Enter your first name',
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
                      'Last Name',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    suffixIcon: const Icon(
                      Icons.person_outline_rounded,
                    ),
                    hintText: 'Enter your last name',
                    prefix: const Text('    '),
                    hintStyle: const TextStyle(
                        color: Color(0XFF757575),
                        fontFamily: 'Muli',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       _obscureText = !_obscureText;
                    //     });
                    //   },
                    //   icon: Icon(
                    //       _obscureText
                    //           ? Icons.visibility
                    //           : Icons.visibility_off,
                    //       color: const Color(0xffffcc33)),
                    // ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                      'Phone Number',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    suffixIcon: const Icon(
                      Icons.phone_iphone_outlined,
                    ),
                    hintText: 'Enter your phone number',
                    prefix: const Text('    '),
                    hintStyle: const TextStyle(
                        color: Color(0XFF757575),
                        fontFamily: 'Muli',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                      'Address',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontFamily: 'Muli',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    suffixIcon: const Icon(
                      Icons.location_on_outlined,
                    ),
                    hintText: 'Enter your address',
                    prefix: const Text('    '),
                    hintStyle: const TextStyle(
                        color: Color(0XFF757575),
                        fontFamily: 'Muli',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  child: MaterialButton(
                    onPressed: () {},
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
                const SizedBox(
                  height: 30,
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
                    children: const [
                      Text(
                        'By continuing your confirm that you agree \nwith our Term and Condition',
                        style: TextStyle(
                            color: Color(0xff808080),
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        textAlign: TextAlign.center,
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
