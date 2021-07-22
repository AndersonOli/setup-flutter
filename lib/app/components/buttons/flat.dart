import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

class FlatButton extends StatelessWidget {
  const FlatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeServices>(context).currentTheme;
    return flatButton(theme);
  }
}

Widget flatButton(ThemeData theme) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(),
    child: Text(
      'Flat button example',
      style: TextStyle(color: theme.primaryColor),
    ),
  );
}
