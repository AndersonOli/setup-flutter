import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  const RaisedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return raisedButton();
  }
}

Widget raisedButton() {
  return ElevatedButton(
    onPressed: () {},
    child: Text('Raised Button'),
  );
}
