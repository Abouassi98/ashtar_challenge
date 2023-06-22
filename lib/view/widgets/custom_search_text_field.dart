import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  final Function? onChanged;
  final Widget? child;
  const CustomSearchTextField({Key? key, this.onChanged, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 35,
      child: TextField(
        keyboardType: TextInputType.text,
        onChanged: onChanged as void Function(String)?,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          filled: true,
          hintStyle: const TextStyle(
            fontFamily: 'Almarai',
            fontSize: 12,
            color: Color(0xffe2e2e2),
          ),
          fillColor: Colors.white,
          hintText: 'search',
          prefixIcon:
              const Icon(Icons.search, color: Color(0xffe2e2e2), size: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xFFE2E2E2),
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xFFE2E2E2),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xFFE2E2E2),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xFFE2E2E2),
              )),
        ),
      ),
    );
  }
}
