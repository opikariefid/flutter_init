import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputDropdown extends StatelessWidget {
  final List data;
  final String controller;
  final String label;
  final double margin;
  final double border;
  final placeholder;
  final labelStyle;
  final double radius;
  final bool enabled;
  final bool isError;
  final bool isFilled;
  final Color fillColor;
  final Widget icon;
  final String errorMessage;
  final void Function(dynamic newValue) onChanged;
  const InputDropdown({
    Key? key,
    required this.controller,
    required this.label,
    required this.data,
    this.enabled = true,
    this.fillColor = Colors.transparent,
    this.isFilled = false,
    this.margin = 10,
    this.border = 1,
    this.radius = 0,
    this.labelStyle = "",
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
    final _labelStyle =
        labelStyle == "" ? Theme.of(context).textTheme.caption : labelStyle;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputDecorator(
            decoration: InputDecoration(
              filled: !enabled || isFilled,
              fillColor: !enabled ? fillColor.withOpacity(.25) : fillColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(
                    width: border,
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
            child: !enabled
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        placeholder,
                        style: _labelStyle!.copyWith(
                            color: !enabled
                                ? _labelStyle!.color.withOpacity(.5)
                                : _labelStyle!.color),
                      ),
                    ],
                  )
                : DropdownButton(
                    icon: icon,
                    iconDisabledColor: Colors.grey.withOpacity(.5),
                    iconEnabledColor: !enabled
                        ? Colors.grey.withOpacity(.5)
                        : _labelStyle.color,
                    dropdownColor: fillColor,
                    style: Theme.of(context).textTheme.caption,
                    alignment: Alignment.center,
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: controller,
                    items: List.generate(
                      _data.length,
                      (index) {
                        final getData = _data[index];
                        return DropdownMenuItem(
                          enabled: getData['id'] != '' ? true : false,
                          value: getData['id'],
                          child: Text(
                            getData['label'],
                            style: _labelStyle!.copyWith(
                                color: !enabled
                                    ? Colors.grey.withOpacity(.5)
                                    : getData['id'] != ''
                                        ? _labelStyle.color
                                        : _labelStyle.color!.withOpacity(.3)),
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
