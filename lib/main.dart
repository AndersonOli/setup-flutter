import 'package:flutter/material.dart';
import 'package:setup/app/storybook/story.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeServices(),
      child: Builder(builder: (BuildContext context) {
        return StoryBook();
      }),
    );
  }
}
// flutter web - plataformas que vai rodar
// import 'package:flutter/material.dart';
// import 'package:setup/app/storybook/story.dart';

// void main() => runApp(StoryBook());
