import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //text field is modified in app_theme.dart file
      decoration: InputDecoration(hintText: hint),
    );
  }
}
