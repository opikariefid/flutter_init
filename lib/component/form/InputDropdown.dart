import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputDropdown extends StatelessWidget {
  final List data;
  final String input;
  final String label;
  final double margin;
  final placeholder;
  final bool isError;
  final Widget icon;
  final String errorMessage;
  final void Function(dynamic newValue) onChanged;
  const InputDropdown({
    Key? key,
    required this.input,
    required this.label,
    required this.data,
    this.margin = 10,
    this.placeholder = "Pilih...",
    this.errorMessage = "Mohon untuk diisi.",
    this.isError = false,
    this.icon = const Icon(FlutterRemix.arrow_down_s_line),
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _data = [
      {
        'label': placeholder,
        'id': "",
      }
    ];
    _data.addAll(data);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputDecorator(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(.1)),
              ),
              label: Text(label),
              labelStyle: Theme.of(context).textTheme.subtitle1,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              border: const OutlineInputBorder(),
            ),
            child: DropdownButton(
              icon: icon,
              dropdownColor: Theme.of(context).colorScheme.surface,
              style: Theme.of(context).textTheme.caption,
              alignment: Alignment.center,
              isExpanded: true,
              underline: const SizedBox(),
              value: input,
              items: List.generate(
                _data.length,
                (index) {
                  final getData = _data[index];
                  print(data);
                  return DropdownMenuItem(
                    enabled: getData['id'] != '' ? true : false,
                    value: getData['id'],
                    child: Text(
                      getData['label'],
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: getData['id'] != ''
                              ? Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .color!
                                  .withOpacity(1)
                              : Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .color!
                                  .withOpacity(.3)),
                    ),
                  );
                },
              ),
              onChanged: onChanged,
            ),
          ),
          if (isError)
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 7, top: 7),
              child: Text(
                errorMessage,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
