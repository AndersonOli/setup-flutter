import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

class RaisedButton extends StatelessWidget {
  const RaisedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeServices>(context).currentTheme;
    return raisedButton(theme);
  }
}

Widget raisedButton(ThemeData theme) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(theme.primaryColor),
    ),
    onPressed: () {},
    child: Text('Raised Button'),
  );
}
