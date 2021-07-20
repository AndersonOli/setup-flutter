import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  const FlatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return flatButton();
  }
}

Widget flatButton() {
  return TextButton(
    onPressed: () {},
    child: Text('Flat button example'),
  );
}
