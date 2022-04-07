import 'package:flutter/material.dart';
import 'package:flutter_init/component/button/buttonvariant.dart';
import 'package:flutter_init/theme.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:get/get.dart';

class AppBarBack extends StatelessWidget {
  final String title;
  const AppBarBack({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: ButtonVariant(
        color: isDarkMode() ? Colors.white : Colors.black,
        bgcolor: Colors.transparent,
        margin: EdgeInsets.zero,
        border: 0,
        shadow: false,
        isChild: true,
        hasTooltip: true,
        label: 'Back',
        child: const Icon(FlutterRemix.arrow_left_line),
        onPressed: () {
          Get.back();
        },
      ),
      expandedHeight: 50,
      pinned: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(fontSize: Get.width / 25),
      ),
    );
  }
}
