import 'package:flutter/material.dart';
class FormNewPass extends StatelessWidget {
   FormNewPass({
    required this.text
  }) ;
String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 13, 0,13),
          fillColor:  const Color(0xFFffffff),
          filled: true,
          focusColor:  const Color(0xFFffffff),
          border: const OutlineInputBorder(),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                  style: BorderStyle.solid)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrange, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          prefixIcon: const Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
          ),
          hintText: text,
          hintTextDirection: TextDirection.rtl,
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          suffixStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        )
    );
  }
}