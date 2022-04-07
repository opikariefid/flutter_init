import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InputText extends StatelessWidget {
  final String placeholder;
  final String label;
  final EdgeInsets margin;
  final EdgeInsets inputPadding;
  final bool isDense;
  final bool enabled;
  final bool multiText;
  final bool autofocus;
  final bool isPassword;
  final bool customErrorLayout;
  final bool showCounter;
  final bool enableBorder;
  final int maxLength;
  final TextAlign textAlign;
  final TextInputType inputType;
  final TextEditingController controller;
  final String labelPosition;
  final void Function() onEditingComplete;
  final void Function(String newValue) onSubmit;
  final void Function(String newValue) onChanged;
  final String? Function(String? newValue) validator;
  const InputText({
    Key? key,
    required this.controller,
    required this.onSubmit,
    required this.onEditingComplete,
    required this.onChanged,
    required this.validator,
    this.label = 'Label',
    this.placeholder = '',
    this.margin = const EdgeInsets.symmetric(vertical: 10),
    this.enabled = true,
    this.isDense = false,
    this.customErrorLayout = false,
    this.inputPadding = const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    this.autofocus = false,
    this.enableBorder = true,
    this.textAlign = TextAlign.start,
    this.inputType = TextInputType.name,
    this.labelPosition = 'float',
    this.multiText = false,
    this.isPassword = false,
    this.showCounter = false,
    this.maxLength = TextField.noMaxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterText = "".obs;
    final TextFormField textChild = TextFormField(
      obscureText: isPassword,
      maxLength: maxLength,
      autofocus: autofocus,
      style: Theme.of(context).textTheme.caption,
      textAlign: textAlign,
      keyboardType: inputType,
      inputFormatters: <TextInputFormatter>[
        if (inputType == TextInputType.number)
          FilteringTextInputFormatter.digitsOnly,
        if (inputType == TextInputType.number)
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      maxLines: multiText ? 3 : 1,
      controller: controller,
      decoration: InputDecoration(
        filled: !enabled,
        fillColor: !enabled ? Colors.grey.withOpacity(.1) : Colors.transparent,
        isDense: isDense,
        enabled: enabled,
        contentPadding: inputPadding,
        counterText: showCounter ? null : "",
        counterStyle: TextStyle(
            height: showCounter ? 1 : 0, fontSize: showCounter ? 12 : 0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enableBorder
                  ? Theme.of(context).colorScheme.onBackground.withOpacity(.1)
                  : Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enableBorder
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent),
        ),
        floatingLabelBehavior: labelPosition == 'float'
            ? FloatingLabelBehavior.always
            : FloatingLabelBehavior.never,
        floatingLabelStyle: Theme.of(context).textTheme.subtitle1,
        hintText: placeholder,
        hintStyle: Theme.of(context).textTheme.caption!.copyWith(
            color: Theme.of(context).textTheme.caption!.color!.withAlpha(80)),
        labelText: labelPosition == 'float' ? label : null,
        labelStyle: Theme.of(context).textTheme.subtitle1,
      ),
      onChanged: (newValue) {
        counterText.value = controller.text;
      },
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
      validator: validator,
    );
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (labelPosition == 'outside' && label.length > 0)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                label,
                style: Theme.of(context).textTheme.caption!.copyWith(
                    color: !enabled
                        ? Colors.grey.withOpacity(.1)
                        : Theme.of(context).textTheme.caption!.color),
              ),
            ),
          textChild,
        ],
      ),
    );
  }
}
