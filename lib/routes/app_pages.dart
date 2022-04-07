import 'package:flutter_init/pages/about.dart';
import 'package:flutter_init/pages/demo.dart';
import 'package:flutter_init/pages/example/button.dart';
import 'package:flutter_init/pages/example/color.dart';
import 'package:flutter_init/pages/example/form.dart';
import 'package:flutter_init/pages/example/typography.dart';
import 'package:flutter_init/pages/home/index.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(name: AppRoutes.demo, page: () => const DemoPage()),
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(name: AppRoutes.about, page: () => const AboutPage()),
    GetPage(
        name: AppRoutes.exampleTypography,
        page: () => const ExampleTypographyPage()),
    GetPage(
        name: AppRoutes.exampleButton, page: () => const ExampleButtonPage()),
    GetPage(name: AppRoutes.exampleColor, page: () => const ExampleColorPage()),
    GetPage(name: AppRoutes.examplForm, page: () => const ExampleFormPage()),
  ];
}
