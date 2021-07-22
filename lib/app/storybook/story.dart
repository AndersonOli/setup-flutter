import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/app/shared/themes/theme_services.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:setup/app/components/buttons/flat.dart';
import 'package:setup/app/components/buttons/raised.dart';
import 'package:setup/app/components/inputs/input.dart';
import 'package:setup/app/components/inputs/input-outline.dart';

class StoryBook extends StatelessWidget {
  const StoryBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeServices themeProvider = Provider.of<ThemeServices>(context);
    ThemeData theme = themeProvider.currentTheme;
    return Storybook(
      theme: theme,
      storyWrapperBuilder: (context, story, child) => Stack(
        children: [
          Container(
            padding: story.padding,
            color: Theme.of(context).canvasColor,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child,
                ElevatedButton(
                    onPressed: () => themeProvider.toggleTheme(),
                    child: Text('Switch theme'))
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                story.name,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
      children: [
        Story(
          section: 'Buttons',
          name: 'Flat button',
          builder: (_, k) => flatButton(theme),
        ),
        Story(
          section: 'Buttons',
          name: 'Raised Button',
          builder: (_, k) => raisedButton(theme),
        ),
        Story(
          section: 'Inputs',
          name: 'Standard Input',
          builder: (_, k) => input(theme),
        ),
        Story(
          section: 'Inputs',
          name: 'Outline Input',
          builder: (_, k) => outlineInput(theme),
        )
      ],
    );
  }
}
