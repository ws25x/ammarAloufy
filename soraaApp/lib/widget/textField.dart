import 'package:flutter/material.dart';
import '../widget/appColors.dart' as appColor;

class textField extends StatelessWidget {
  final controlloer;
  final String hintText;
  final bool secureText;

  const textField({
    super.key,
    required this.controlloer,
    required this.hintText,
    required this.secureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(

        controller: controlloer,
        obscureText: secureText,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade700)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColor.greenFlag),

          ),
        ),
      ),
    );
  }
}
