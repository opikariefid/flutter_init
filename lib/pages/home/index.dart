import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      body: layout(),
    );
  }

  CustomScrollView layout() {
    return const CustomScrollView(
      slivers: [
        AppBarBack(
          title: 'Flutter Home',
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
      ],
    );
  }
}
