import 'package:flutter/material.dart';
import 'package:flutter_init/component/appbar/AppBarBack.dart';
import 'package:flutter_init/component/button/buttonvariant.dart';
import 'package:flutter_init/component/form/InputDropdown.dart';
import 'package:flutter_init/component/form/InputRadio.dart';
import 'package:flutter_init/component/form/InputText.dart';
import 'package:flutter_init/theme.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:get/get.dart';

class ExampleFormPage extends StatefulWidget {
  const ExampleFormPage({Key? key}) : super(key: key);

  @override
  _ExampleFormPageState createState() => _ExampleFormPageState();
}

class _ExampleFormPageState extends State<ExampleFormPage> {
  var inputDropdown = "";
  var dropdownList = [
    {
      "label": "List 1",
      "id": "list1",
    },
    {
      "label": "List 2",
      "id": "list2",
    },
    {
      "label": "List 3",
      "id": "list3",
    },
  ];
  var inputRadio = "";
  TextEditingController inputText = TextEditingController();
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
          title: 'Form Example',
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppVariables.containerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Input Dropdown: ' + inputDropdown,
                  style: Theme.of(context).textTheme.caption,
                ),
                InputDropdown(
                  input: inputDropdown,
                  label: "",
                  placeholder: "Select Data...",
                  data: dropdownList,
                  onChanged: (newValue) {
                    setState(() {
                      inputDropdown = newValue;
                    });
                  },
                ),
                Text(
                  'Input Radio: ' + inputRadio,
                  style: Theme.of(context).textTheme.caption,
                ),
                InputRadio(
                  id: "one",
                  controller: inputRadio,
                  onChanged: (newValue) {
                    setState(() {
                      inputRadio = newValue;
                    });
                  },
                  child: Text("One"),
                ),
                InputRadio(
                  id: "two",
                  controller: inputRadio,
                  onChanged: (newValue) {
                    setState(() {
                      inputRadio = newValue;
                    });
                  },
                  child: Text("Two"),
                ),
                InputRadio(
                  id: "three",
                  controller: inputRadio,
                  onChanged: (newValue) {
                    setState(() {
                      inputRadio = newValue;
                    });
                  },
                  child: Text("Three"),
                ),
                Text(
                  'Input Text',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(
                  height: 5,
                ),
                InputText(
                  label: 'Username',
                  placeholder: 'Username',
                  controller: inputText,
                  onSubmit: (newValue) {},
                  onEditingComplete: () {},
                  onChanged: (newValue) {},
                  validator: (newValue) {},
                ),
                InputText(
                  label: 'Username',
                  labelPosition: 'outside',
                  placeholder: 'Username',
                  customErrorLayout: true,
                  controller: inputText,
                  onSubmit: (newValue) {},
                  onEditingComplete: () {},
                  onChanged: (newValue) {},
                  validator: (newValue) {},
                ),
                InputText(
                  label: 'Username',
                  labelPosition: 'none',
                  placeholder: 'Username',
                  customErrorLayout: true,
                  controller: inputText,
                  onSubmit: (newValue) {},
                  onEditingComplete: () {},
                  onChanged: (newValue) {},
                  validator: (newValue) {},
                ),
                InputText(
                  enabled: false,
                  label: 'Username',
                  placeholder: 'Username',
                  controller: inputText,
                  onSubmit: (newValue) {},
                  onEditingComplete: () {},
                  onChanged: (newValue) {},
                  validator: (newValue) {},
                ),
                InputText(
                  label: 'Username',
                  placeholder: 'Username',
                  showCounter: true,
                  controller: inputText,
                  onSubmit: (newValue) {},
                  onEditingComplete: () {},
                  onChanged: (newValue) {},
                  validator: (newValue) {},
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
