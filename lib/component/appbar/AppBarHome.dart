import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      expandedHeight: 50,
      pinned: true,
      title: Row(
        children: const [
          FlutterLogo(),
          Padding(
            padding: EdgeInsets.only(
              left: 5,
            ),
            child: Text(
              'Flutter Demo',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
