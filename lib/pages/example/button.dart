import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:flutter_init/component/button/elevatedbutton.dart';
import 'package:flutter_init/component/button/iconbutton.dart';
import 'package:flutter_init/component/button/outlinebutton.dart';
import 'package:flutter_init/component/button/textbutton.dart';
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
                  'Button Elevated',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonElevated(
                  width: Get.width,
                  title: 'Primary',
                  onPressed: () {},
                ),
                ButtonElevated(
                  bgcolor: AppColors.appWarning,
                  width: Get.width,
                  title: 'Warning',
                  onPressed: () {},
                ),
                ButtonElevated(
                  bgcolor: AppColors.appDanger,
                  width: Get.width,
                  title: 'Danger',
                  onPressed: () {},
                ),
                ButtonElevated(
                  bgcolor: AppColors.appSuccess,
                  width: Get.width,
                  title: 'Success',
                  onPressed: () {},
                ),
                Text(
                  'Rounded',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonElevated(
                  radius: 30,
                  bgcolor: AppColors.appPrimary,
                  width: Get.width,
                  title: 'Default',
                  onPressed: () {},
                ),
                Text(
                  'Remove Shadow',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonElevated(
                  radius: 30,
                  shadow: false,
                  width: Get.width,
                  title: 'Remove Shadow',
                  onPressed: () {},
                ),
                Text(
                  'Custom Font Size',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonElevated(
                  radius: 30,
                  size: 25,
                  width: Get.width,
                  title: 'Custom Font Size',
                  onPressed: () {},
                ),
                Text(
                  'With Icon',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonElevated(
                  radius: 30,
                  width: Get.width,
                  title: 'Back',
                  showIcon: 'left',
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  iconRight: Icon(FlutterRemix.arrow_right_line),
                  onPressed: () {},
                ),
                ButtonElevated(
                  radius: 30,
                  width: Get.width,
                  title: 'Back',
                  showIcon: 'both',
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  iconRight: Icon(FlutterRemix.arrow_right_line),
                  onPressed: () {},
                ),
                ButtonElevated(
                  radius: 30,
                  width: Get.width,
                  title: 'Back',
                  showIcon: 'both',
                  justify: true,
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  iconRight: Icon(FlutterRemix.arrow_right_line),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black45,
            height: 50,
            thickness: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Button Outline',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  width: Get.width,
                  title: 'Default',
                  onPressed: () {},
                ),
                ButtonOutline(
                  color: AppColors.appWarning,
                  width: Get.width,
                  title: 'Warning',
                  onPressed: () {},
                ),
                ButtonOutline(
                  color: AppColors.appDanger,
                  width: Get.width,
                  title: 'Danger',
                  onPressed: () {},
                ),
                ButtonOutline(
                  color: AppColors.appSuccess,
                  width: Get.width,
                  title: 'Success',
                  onPressed: () {},
                ),
                Text(
                  'Rounded',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  radius: 30,
                  width: Get.width,
                  title: 'Rounded',
                  onPressed: () {},
                ),
                Text(
                  'Remove Shadow',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  shadow: false,
                  width: Get.width,
                  title: 'Remove Shadow',
                  onPressed: () {},
                ),
                Text(
                  'Custom Font Size',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  size: 25,
                  width: Get.width,
                  title: 'Custom Font Size',
                  onPressed: () {},
                ),
                Text(
                  'Inverted',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  inverted: true,
                  width: Get.width,
                  title: 'Inverted',
                  onPressed: () {},
                ),
                Text(
                  'With Icon',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonOutline(
                  border: 0,
                  shadow: false,
                  title: 'Back',
                  showIcon: 'left',
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  width: Get.width,
                  onPressed: () {},
                ),
                ButtonOutline(
                  border: 0,
                  shadow: false,
                  title: 'Back',
                  showIcon: 'both',
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  iconRight: Icon(FlutterRemix.arrow_right_line),
                  width: Get.width,
                  onPressed: () {},
                ),
                ButtonOutline(
                  border: 0,
                  shadow: false,
                  title: 'Back',
                  showIcon: 'both',
                  justify: true,
                  iconLeft: Icon(FlutterRemix.arrow_left_line),
                  iconRight: Icon(FlutterRemix.arrow_right_line),
                  width: Get.width,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black45,
            height: 50,
            thickness: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Button Text',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonText(
                  text: 'Primary',
                  width: Get.width,
                  onPressed: () {},
                ),
                ButtonText(
                  text: 'Warning',
                  width: Get.width,
                  color: AppColors.appWarning,
                  onPressed: () {},
                ),
                ButtonText(
                  text: 'Danger',
                  width: Get.width,
                  color: AppColors.appDanger,
                  onPressed: () {},
                ),
                ButtonText(
                  text: 'Success',
                  width: Get.width,
                  color: AppColors.appSuccess,
                  onPressed: () {},
                ),
                Text(
                  'Rounded',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonText(
                  radius: 30,
                  text: 'Rounded',
                  width: Get.width,
                  onPressed: () {},
                ),
                Text(
                  'Custom Font Size',
                  style: Theme.of(context).textTheme.caption,
                ),
                ButtonText(
                  text: 'Custom Font Size',
                  size: 25,
                  width: Get.width,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
