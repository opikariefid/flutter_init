import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:flutter_init/component/button/buttonvariant.dart';
import 'package:flutter_init/theme.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:get/get.dart';

class ExampleButtonPage extends StatefulWidget {
  const ExampleButtonPage({Key? key}) : super(key: key);

  @override
  _ExampleButtonPageState createState() => _ExampleButtonPageState();
}

class _ExampleButtonPageState extends State<ExampleButtonPage> {
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
          title: 'Button Example',
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Button Variant',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  label: 'Default',
                  width: Get.width,
                  onPressed: () {},
                ),
                ButtonVariant(
                  color: AppColors.appWarning,
                  width: Get.width,
                  label: 'Warning',
                  onPressed: () {},
                ),
                ButtonVariant(
                  color: AppColors.appDanger,
                  width: Get.width,
                  label: 'Danger',
                  onPressed: () {},
                ),
                ButtonVariant(
                  color: AppColors.appSuccess,
                  width: Get.width,
                  label: 'Success',
                  onPressed: () {},
                ),
                Text(
                  'Rounded',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  radius: 30,
                  width: Get.width,
                  label: 'Rounded',
                  onPressed: () {},
                ),
                Text(
                  'Remove Shadow',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  shadow: false,
                  width: Get.width,
                  label: 'Remove Shadow',
                  onPressed: () {},
                ),
                Text(
                  'Custom Font Size',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  width: Get.width,
                  label: 'Custom Font Size',
                  textStyle: Theme.of(context).textTheme.button!.copyWith(
                        fontSize: 20,
                      ),
                  onPressed: () {},
                ),
                Text(
                  'Inverted',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  isInverted: true,
                  width: Get.width,
                  label: 'Inverted',
                  onPressed: () {},
                ),
                Text(
                  'Disabled',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  isDisabled: true,
                  width: Get.width,
                  label: 'Disabled',
                  onPressed: () {},
                ),
                Text(
                  'Loading',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  isLoading: true,
                  width: Get.width,
                  onPressed: () {},
                ),
                Text(
                  'Custom Layout',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonVariant(
                  shadow: true,
                  isChild: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FlutterRemix.user_line),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'User',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                  width: Get.width,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
      ],
    );
  }
}
