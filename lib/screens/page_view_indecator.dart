import 'package:flutter/material.dart';

class pageviewindecator extends StatelessWidget {
  final double marginend;
  final bool selected;
  final double width;
  final double height;

  pageviewindecator({this.marginend = 0, this.selected = false,  this.width=6, this.height=6});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginend),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: selected ? Color(0xffFF7643) : Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
