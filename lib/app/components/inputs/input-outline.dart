import 'package:flutter/material.dart';

class OutlineInput extends StatelessWidget {
  const OutlineInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return outlineInput();
  }
}

Widget outlineInput() {
  return TextFormField(
    decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: 'Input label'),
  );
}
