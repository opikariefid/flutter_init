import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:flutter_init/component/button/elevatedbutton.dart';
import 'package:flutter_init/theme.dart';
import 'package:get/get.dart';

class ExampleColorPage extends StatefulWidget {
  const ExampleColorPage({Key? key}) : super(key: key);

  @override
  _ExampleColorPageState createState() => _ExampleColorPageState();
}

class _ExampleColorPageState extends State<ExampleColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      body: layout(),
    );
  }

  CustomScrollView layout() {
    return CustomScrollView(
      slivers: [
        const AppBarBack(
          title: 'Color Example',
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Color Scheme',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ButtonElevated(
                        width: Get.width,
                        title: 'Background',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.background,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Error',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.error,
                        color: Theme.of(context).colorScheme.onError,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Primary',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.primary,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Primary Variant',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.primaryVariant,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Secondary',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.secondary,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Secondary Variant',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.secondaryVariant,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Surface',
                        onPressed: () {},
                        bgcolor: Theme.of(context).colorScheme.surface,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Color Theme',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ButtonElevated(
                        width: Get.width,
                        title: 'Primary Light',
                        onPressed: () {},
                        bgcolor: Theme.of(context).primaryColorLight,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Primary',
                        onPressed: () {},
                        bgcolor: Theme.of(context).primaryColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Primary Dark',
                        onPressed: () {},
                        bgcolor: Theme.of(context).primaryColorDark,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Background Color',
                        onPressed: () {},
                        bgcolor: Theme.of(context).backgroundColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Bottom Appbar',
                        onPressed: () {},
                        bgcolor: Theme.of(context).bottomAppBarColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Canvas',
                        onPressed: () {},
                        bgcolor: Theme.of(context).canvasColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Divider',
                        onPressed: () {},
                        bgcolor: Theme.of(context).dividerColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Hint',
                        onPressed: () {},
                        bgcolor: Theme.of(context).hintColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Card',
                        onPressed: () {},
                        bgcolor: Theme.of(context).cardColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Error',
                        onPressed: () {},
                        bgcolor: Theme.of(context).errorColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Focus',
                        onPressed: () {},
                        bgcolor: Theme.of(context).focusColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Hover',
                        onPressed: () {},
                        bgcolor: Theme.of(context).hoverColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Shadow',
                        onPressed: () {},
                        bgcolor: Theme.of(context).shadowColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Splash',
                        onPressed: () {},
                        bgcolor: Theme.of(context).splashColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Disabled',
                        onPressed: () {},
                        bgcolor: Theme.of(context).disabledColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Highlight',
                        onPressed: () {},
                        bgcolor: Theme.of(context).highlightColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Indicator',
                        onPressed: () {},
                        bgcolor: Theme.of(context).indicatorColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Selected Row',
                        onPressed: () {},
                        bgcolor: Theme.of(context).selectedRowColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Secondary Header',
                        onPressed: () {},
                        bgcolor: Theme.of(context).secondaryHeaderColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Dialog Background',
                        onPressed: () {},
                        bgcolor: Theme.of(context).dialogBackgroundColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Toggleable Active',
                        onPressed: () {},
                        bgcolor: Theme.of(context).toggleableActiveColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Unselected Widget',
                        onPressed: () {},
                        bgcolor: Theme.of(context).unselectedWidgetColor,
                      ),
                      ButtonElevated(
                        width: Get.width,
                        title: 'Scaffold Background',
                        onPressed: () {},
                        bgcolor: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
