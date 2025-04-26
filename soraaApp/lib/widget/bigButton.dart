import 'package:flutter/material.dart';
import 'appColors.dart' as appColor;

class bigbutton extends StatelessWidget {
  // var
  final String  txt;
  final void Function()? onTap;

  const bigbutton({super.key, required this.onTap,required this.txt});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),

        decoration: BoxDecoration(
          color: appColor.greenFlag,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
