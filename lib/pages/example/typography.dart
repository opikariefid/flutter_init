import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:get/get.dart';

class ExampleTypographyPage extends StatefulWidget {
  const ExampleTypographyPage({Key? key}) : super(key: key);

  @override
  _ExampleTypographyPageState createState() => _ExampleTypographyPageState();
}

class _ExampleTypographyPageState extends State<ExampleTypographyPage> {
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
          title: 'Typography Example',
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Text(
                'Heading 1',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline1!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Heading 2',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline2!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Heading 3',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline3!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Heading 4',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline4!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Heading 5',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline5!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Heading 6',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .headline6!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Subtitle 1',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Subtitle 2',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Caption',
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .caption!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Overline',
                style: Theme.of(context).textTheme.overline,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .overline!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Button',
                style: Theme.of(context).textTheme.button,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .button!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Body Text 1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
              Text(
                'Body Text 2',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'Size: ' +
                    Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .fontSize!
                        .toStringAsFixed(0) +
                    'px',
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black45,
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
