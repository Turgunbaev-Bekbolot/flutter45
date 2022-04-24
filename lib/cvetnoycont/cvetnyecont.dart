import 'package:flutter/material.dart';

class CvetnyeCont extends StatelessWidget {
  double? width;
  double? height;
  String? text1;
  Color? color;
  Color? color2;
  CvetnyeCont({
    Key? key,
    required this.height,
    required this.text1,
    required this.width,
    required this.color,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(24),
            ),
            width: width,
            height: height,
            child: Text(
              text1!,
              style: TextStyle(
                color: color2,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
