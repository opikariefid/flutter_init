import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:flutter_init/component/button/elevatedbutton.dart';
import 'package:flutter_init/theme.dart';
import 'package:get/get.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          title: 'About App',
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: AppVariables.containerPadding,
            width: Get.width,
            height: Get.height - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About App',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Aplikasi ini digunakan untuk pertama kali menggunakan flutter tanpa perlu pusing mengatur tema bawaan flutter.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Spesial Thanks',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                ButtonElevated(
                  width: Get.width,
                  title: 'Ginanjar Maulana',
                  onPressed: () {},
                ),
                ButtonElevated(
                  width: Get.width,
                  title: 'Bageur Solusi Indonesia',
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Created by',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                ButtonElevated(
                  width: Get.width,
                  title: 'Taufik Arif',
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
