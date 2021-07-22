import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

class OutlineInput extends StatelessWidget {
  const OutlineInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeServices>(context).currentTheme;
    return outlineInput(theme);
  }
}

Widget outlineInput(ThemeData theme) {
  return TextFormField(
    decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: 'Input label'),
  );
}
