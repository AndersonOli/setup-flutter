import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeServices>(context).currentTheme;
    return input(theme);
  }
}

Widget input(ThemeData theme) {
  return TextField();
}
