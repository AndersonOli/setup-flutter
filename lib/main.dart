import 'package:flutter/material.dart';
import 'package:setup/app/shared/themes/standard.dart';
import 'package:setup/app/storybook/story.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

void main() => runApp(ChangeNotifierProvider<ThemeServices>(
    create: standard,
    builder: (BuildContext context) => ThemeModel(),
    child: MyApp()));
