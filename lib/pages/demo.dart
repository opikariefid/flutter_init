import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarHome.dart';
import 'package:flutter_init/component/button/elevatedbutton.dart';
import 'package:flutter_init/theme.dart';
import 'package:get/get.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
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
        const AppBarHome(),
        SliverToBoxAdapter(
          child: Container(
            height: Get.height - 100,
            padding: AppVariables.containerPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter Demo',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'See example below!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ButtonElevated(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  title: 'Color',
                  height: 50,
                  shadow: true,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.secondary,
                  size: Get.width / 25,
                  bgcolor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Get.toNamed('/example_color');
                  },
                ),
                ButtonElevated(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  title: 'Typography',
                  height: 50,
                  shadow: true,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.secondary,
                  size: Get.width / 25,
                  bgcolor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Get.toNamed('/example_typography');
                  },
                ),
                ButtonElevated(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  title: 'Button',
                  height: 50,
                  shadow: true,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.secondary,
                  size: Get.width / 25,
                  bgcolor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Get.toNamed('/example_button');
                  },
                ),
                ButtonElevated(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  title: 'Form',
                  height: 50,
                  shadow: true,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.secondary,
                  size: Get.width / 25,
                  bgcolor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Get.toNamed('/example_form');
                  },
                ),
                ButtonElevated(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  title: 'About App',
                  height: 50,
                  shadow: true,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.secondary,
                  size: Get.width / 25,
                  bgcolor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Get.toNamed('/about');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
