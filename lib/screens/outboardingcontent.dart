import 'package:flutter/material.dart';

class outbordingcontent extends StatelessWidget {
  String image = '';
  String text = '';
  String text2 = '';

  outbordingcontent(
      {this.image = '',
      this.text = '',
      this.text2 =
          ''}); // const outbordingcontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 36,fontFamily: 'Muli', fontWeight: FontWeight.bold,color: Color(0xffFF7643)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 232,
            child: Text(
              text2,
              style: const TextStyle(fontSize: 16,fontFamily: 'Muli',fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 70,),
          Image(
            image: AssetImage(image),
            width: 236,
            height: 260,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
