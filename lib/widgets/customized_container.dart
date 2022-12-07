import 'package:flutter/material.dart';

class CustomizedContainer extends StatelessWidget {
  const CustomizedContainer({
    required this.width,
    required this.height,
    required this.color,
    //this.circleRadius = 35,
    Key? key}) : super(key: key);

  final double height;
  final double width;
  final Color color;
  //final double? circleRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
        decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(5),
          topRight: Radius.circular(5)
        ),
        )
    );
  }
}
