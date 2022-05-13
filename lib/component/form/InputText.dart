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
  final bool isFill;
  final bool hasErrorText;
  final int maxLength;
  final double radius;
  final TextAlign textAlign;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final TextEditingController controller;
  final String labelPosition;
  final fillColor;
  final inputStyle;
  final labelStyle;
  final placeholderStyle;
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
    this.inputAction = TextInputAction.done,
    this.inputStyle = "",
    this.labelStyle = "",
    this.placeholderStyle = "",
    this.labelPosition = 'float',
    this.radius = 5,
    this.multiText = false,
    this.isPassword = false,
    this.showCounter = false,
    this.hasErrorText = false,
    this.maxLength = TextField.noMaxLength,
    this.isFill = false,
    this.fillColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _inputStyle =
        inputStyle == "" ? Theme.of(context).textTheme.caption : inputStyle;
    final _placeholderStyle = placeholderStyle == ""
        ? Theme.of(context).textTheme.caption
        : placeholderStyle;
    final _labelStyle =
        labelStyle == "" ? Theme.of(context).textTheme.subtitle1 : labelStyle;
    var counterText = "".obs;
    final TextFormField textChild = TextFormField(
      textInputAction: inputAction,
      obscureText: isPassword,
      maxLength: maxLength,
      autofocus: autofocus,
      style: _inputStyle,
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
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: Colors.red)),
        errorStyle: hasErrorText
            ? _inputStyle!.merge(const TextStyle(color: Colors.red))
            : const TextStyle(height: 0, color: Colors.transparent),
        filled: !enabled || isFill,
        fillColor: !enabled ? fillColor.withOpacity(.25) : fillColor,
        isDense: isDense,
        enabled: enabled,
        contentPadding: inputPadding,
        counterText: showCounter ? null : "",
        counterStyle: TextStyle(
            height: showCounter ? 1 : 0, fontSize: showCounter ? 12 : 0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
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
        hintStyle: _placeholderStyle!
            .copyWith(color: _placeholderStyle!.color!.withOpacity(.5)),
        labelText: labelPosition == 'float' ? label : null,
        labelStyle: _labelStyle,
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
                style: _labelStyle!.copyWith(
                    color: !enabled
                        ? Colors.grey.withOpacity(.1)
                        : _labelStyle!.color),
              ),
            ),
          textChild,
        ],
      ),
    );
  }
}
