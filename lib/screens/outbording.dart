import 'package:flutter/material.dart';
import 'package:infinitetech/screens/page_view_indecator.dart';
import 'outboardingcontent.dart';

class outpordingview extends StatefulWidget {
  const outpordingview({Key? key}) : super(key: key);

  @override
  _outpordingviewState createState() => _outpordingviewState();
}

class _outpordingviewState extends State<outpordingview> {
  late PageController _pajcontroleer;
  int _courntpageindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pajcontroleer = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pajcontroleer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _courntpageindex = value;
                });
              },
              controller: _pajcontroleer,
              children: [
                outbordingcontent(
                  image: 'assets/images/splachimage.png',
                  text: 'TOKOTO ',
                  text2: 'Welcome to Tokoto, Let’s shop!',
                ),
                outbordingcontent(
                  text: 'TOKOTO',
                  text2:
                      'We help people conect with store around United State of America',
                  image: 'assets/images/splachimage2.png',
                ),
                outbordingcontent(
                  text: 'TOKOTO',
                  text2:
                      'We show the easy way to shop. Just stay at home with us',
                  image: 'assets/images/splachimage3.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              pageviewindecator(marginend: 3, selected: _courntpageindex == 0,width:_courntpageindex == 0?20:6,height: _courntpageindex == 0?6:6,),
              pageviewindecator(marginend: 3, selected: _courntpageindex == 1,width:_courntpageindex == 1?20:6,height: _courntpageindex == 0?6:6,),
              pageviewindecator(marginend: 3, selected: _courntpageindex == 2,width:_courntpageindex == 2?20:6,height: _courntpageindex == 0?6:6,),
            ],
          ),

          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(bottom: 40,right: 20,left: 20),
            child: ElevatedButton(
              onPressed: () {
                if (_courntpageindex == 0) {
                  setState(() {
                    _courntpageindex = 1;
                  });
                  _pajcontroleer.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOutCirc);
                } else if (_courntpageindex == 1) {
                  setState(() {
                    _courntpageindex = 2;
                  });
                  _pajcontroleer.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOutCirc);
                } else if (_courntpageindex == 2) {
                  Navigator.pushNamed(context, '/login_screen');
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  backgroundColor: const Color(0xffFF7643),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: const Text(
                'Continue',
                style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
