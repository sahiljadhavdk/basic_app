import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    Key? key,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.cursorColor,
    this.errorText,
    this.controller,
    this.counterText,
    this.initialVal,
    this.enabled = true,
    this.textStyle,
    this.hintText,
    this.initialValue,
    this.keyboardType,
    this.labelText,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.obscureText = false,
    this.onChanged,
    this.suffixIconTap,
    this.onFieldSubmitted,
    this.onTap,
    this.isImp = false,
    this.prefixIcon,
    this.readOnly = false,
    this.inputWithLabel = false,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.textInputAction,
    this.validator,
    this.height,
    this.width,
    this.customContentPadding,
    this.isUpload = false,
    this.inputFormatters,
    this.textCapitalization,
    this.prefixWidget,
    this.textAlign,
    this.labelColor,
    this.inputBorderRadius,
    this.labelStyle,
    this.fillColor,
    this.hintStyle,
    this.isBottomSpace = true,
  }) : super(key: key);

  final TextCapitalization? textCapitalization;
  final Function()? onTap;
  final Function()? suffixIconTap;
  final TextStyle? textStyle;
  final bool enabled;
  final bool readOnly;
  final bool isBottomSpace;
  final Color? cursorColor;

  final int? maxLines;
  final int? minLines;
  final bool autoCorrect;
  final String? initialVal;
  final Function(String)? onChanged;
  final bool autoFocus;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? inputWithLabel;
  final String? labelText;
  final bool? isImp;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final double? height;
  final double? width;
  final TextInputAction? textInputAction;
  final Function(String?)? onFieldSubmitted;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefixWidget;
  final String? counterText;
  final TextAlign? textAlign;
  final BoxConstraints? suffixIconConstraints;
  final String? errorText;
  final Color? labelColor;
  final Color? fillColor;

  final bool isUpload;
  final double? inputBorderRadius;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;

  final EdgeInsets? customContentPadding;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(inputBorderRadius ?? 4.w),
      borderSide: BorderSide.none,
    );

    TextFormField textFormField = TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textAlign: textAlign ?? TextAlign.start,
      style: textStyle ??
          Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.normal,
              ),
      controller: controller,
      initialValue: initialVal,
      cursorColor: cursorColor ?? Theme.of(context).colorScheme.onPrimary,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      cursorWidth: isUpload ? 0 : 2.0,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
      autocorrect: autoCorrect,
      inputFormatters: inputFormatters,
      onTap: onTap,
      enabled: enabled,
      decoration: InputDecoration(
        fillColor: !enabled
            ? Colors.grey.withOpacity(0.5)
            : fillColor ?? Theme.of(context).colorScheme.background,
        filled: true,
        counter: const Offstage(),
        prefixIconConstraints: prefixIcon != null
            ? BoxConstraints(
                maxWidth: 18.w,
              )
            : null,
        suffixIconConstraints: suffixIcon != null
            ? BoxConstraints(
                maxWidth: 18.w,
              )
            : null,
        errorBorder: outlineInputBorder.copyWith(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 2,
          ),
        ),
        focusedBorder: outlineInputBorder.copyWith(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        enabledBorder: outlineInputBorder.copyWith(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        border: outlineInputBorder.copyWith(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        hintText: hintText,
        contentPadding: customContentPadding ??
            EdgeInsets.symmetric(
              horizontal: 3.w,
              // vertical: 4.w,
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: hintStyle ??
            Theme.of(context).textTheme.bodySmall!.copyWith(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 16.sp,
              color: Theme.of(context).colorScheme.error,
            ),
        errorText: errorText,
      ),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
    );

    return SizedBox(
      width: width ?? double.infinity,
      // height: height ?? 14.h,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (inputWithLabel ?? false)
          Row(
            children: [
              Text(
                labelText ?? '',
                style: labelStyle ??
                    Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: labelColor ??
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
              ),
              if (isImp!)
                Text(
                  '*',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontSize: 15.sp,
                    // SizerUtil.deviceType == DeviceType.tablet ? 30 : 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        SizedBox(
          height: 0.5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            prefixWidget ?? const SizedBox(),
            Expanded(child: textFormField),
          ],
        ),
        if (isBottomSpace) SizedBox(height: 2.h),
      ]),
    );
  }
}

class SecondaryTextField extends StatelessWidget {
  const SecondaryTextField({
    Key? key,
    this.autofocus = false,
    this.autoCorrect = false,
    this.errorText,
    this.controller,
    this.counterText,
    this.initialVal,
    this.enabled = true,
    this.hintText,
    this.initialValue,
    this.keyboardType,
    this.labelText,
    this.obscureText = false,
    this.onChanged,
    this.suffixIconTap,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.isImp = false,
    this.prefixIcon,
    this.readOnly = false,
    this.inputWithLabel = false,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.textInputAction,
    this.validator,
    this.height,
    this.width,
    this.isUpload = false,
    this.inputFormatters,
    this.textCapitalization,
    this.expands = false,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.borderLess,
  }) : super(key: key);

  final TextCapitalization? textCapitalization;
  final Function()? onTap;
  final Function()? suffixIconTap;
  final bool enabled;
  final bool readOnly;
  final bool autoCorrect;
  final String? initialVal;
  final Function(String)? onChanged;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final bool? inputWithLabel;
  final String? labelText;
  final bool? isImp;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final double? height;
  final double? width;
  final TextInputAction? textInputAction;
  final Function(String?)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? counterText;
  final BoxConstraints? suffixIconConstraints;
  final String? errorText;
  final bool isUpload;
  final bool expands;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool? borderLess;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      gapPadding: 0,
      borderRadius: BorderRadius.circular(10),
      borderSide:
          BorderSide(color: Theme.of(context).colorScheme.tertiary, width: 0.5),
    );

    TextFormField textFormField = TextFormField(
      controller: controller,
      initialValue: initialVal,
      cursorColor: Theme.of(context).primaryColor,

      cursorHeight: isUpload ? 0 : null,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      cursorWidth: isUpload ? 0 : 2.0,
      obscureText: obscureText,
      autocorrect: autoCorrect,
      inputFormatters: inputFormatters,
      onTap: onTap,
      enabled: !readOnly,
      keyboardType: isUpload ? TextInputType.none : keyboardType,
      decoration: InputDecoration(
        counter: const Offstage(),
        border: borderLess == true
            ? InputBorder.none
            : outlineInputBorder.copyWith(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.tertiary)),
        focusedBorder: outlineInputBorder.copyWith(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary)),
        errorBorder: outlineInputBorder,
        prefixIcon: prefixIcon != null
            ? GestureDetector(child: Center(child: prefixIcon))
            : null,
        prefixIconConstraints: prefixIcon != null
            ? BoxConstraints(
                maxWidth: 14.w,
              )
            : null,
        suffixIconConstraints: suffixIcon != null
            ? BoxConstraints(
                maxWidth: 14.w,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: suffixIconTap,
                child: Center(
                  child: suffixIcon,
                ),
              )
            : null,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          // vertical: 1.sp,
          horizontal: 10.sp,
        ).copyWith(right: suffixIcon == null ? 10.sp : 0),
        hintStyle: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: const Color(0xFFABB3BB),
            fontSize: 12.sp),
        errorText: errorText,
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      // expands: expands,
      minLines: minLines,
      maxLines: maxLines,

      // maxLength: maxLength,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      // height: height ?? 14.h,
      width: width ?? double.infinity,
      // child: textFormField,
      child: inputWithLabel!
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        labelText!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 10.sp),
                      ),
                      if (isImp!)
                        const Text(
                          '*',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ),
                textFormField
              ],
            )
          : textFormField,
    );
  }
}

class TernaryTextField extends StatefulWidget {
  final bool enabled;
  final bool isFilled;
  final Color? fillColor;
  final bool readOnly;
  final double? width;
  final double? height;

  final double? titleSpace;
  final double? borderRadius;
  final double? fontSize;
  final double? titleSize;
  final double? fontHeight;
  final EdgeInsetsGeometry? padding;

  final bool autofocus;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? counterText;
  final String? initialValue;
  final void Function()? onTap;
  final EdgeInsetsGeometry? margin;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Widget? suffixIcon, prefixIcon;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  final String? Function(String?)? onFieldSubmitted;
  final List<TextInputFormatter>? textInputFormatter;

  const TernaryTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.maxLength,
    this.enabled = true,
    this.onChanged,
    this.textInputAction,
    this.keyboardType,
    this.onFieldSubmitted,
    this.validator,
    this.hintText,
    this.errorText,
    this.margin,
    this.obscureText = false,
    this.suffixIcon,
    this.autofillHints,
    this.prefixIcon,
    this.initialValue,
    this.onTap,
    this.readOnly = false,
    this.autofocus = false,
    this.maxLines = 1,
    this.width,
    this.height,
    this.counterText,
    this.borderRadius,
    this.fontSize,
    this.fontHeight,
    this.titleSize,
    this.titleSpace,
    this.padding,
    this.textInputFormatter,
    this.minLines,
    this.isFilled = false,
    this.fillColor,
  })  : assert(initialValue == null || controller == null,
            'do not provide initial value or controller at the same time'),
        super(key: key);

  @override
  TernaryTextFieldState createState() => TernaryTextFieldState();
}

class TernaryTextFieldState extends State<TernaryTextField> {
  final _focusNode = FocusNode();
  final _key = GlobalKey<FormFieldState<String>>();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      gapPadding: 0,
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   widget.labelText ?? '',
        //   style: TextStyle(fontSize: widget.titleSize ?? 10.sp),
        // ),
        // SizedBox(height: widget.titleSpace ?? 2.w),
        Container(
          width: widget.width ?? 100.w,
          height: widget.height ?? 13.w,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.sp),
              color: !widget.enabled
                  ? Theme.of(context).disabledColor.withAlpha(25)
                  : Colors.transparent,
              border: null
              // Border.all(
              //   width: 1,
              //   color: widget.errorText != null && widget.errorText!.isNotEmpty
              //       ? Theme.of(context).errorColor
              //       : Colors.transparent,
              // ),
              ),
          child: TextFormField(
            key: _key,
            onTap: widget.onTap,
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            onChanged: widget.onChanged,
            autofocus: widget.autofocus,
            // maxLength: widget.maxLength,
            inputFormatters: widget.textInputFormatter ?? [],
            focusNode: _focusNode,
            validator: widget.validator,
            controller: widget.controller,
            obscureText: widget.obscureText,
            initialValue: widget.initialValue,
            keyboardType: widget.keyboardType,
            autofillHints: widget.autofillHints,
            textInputAction: widget.textInputAction,
            onFieldSubmitted: widget.onFieldSubmitted,
            cursorColor: Theme.of(context).primaryColor,
            style: TextStyle(fontSize: widget.fontSize ?? 16.sp),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isCollapsed: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(
                height: widget.fontHeight ?? 3.8.w,
                fontSize: widget.fontSize ?? 16.sp,
                backgroundColor: Colors.transparent,
              ),
              hintStyle: TextStyle(
                fontSize: widget.fontSize ?? 16.sp,
                color: Theme.of(context).colorScheme.surface,
              ),
              contentPadding: widget.padding ?? EdgeInsets.all(2.w),
              fillColor: !widget.isFilled
                  ? widget.fillColor
                  : Theme.of(context).scaffoldBackgroundColor,
              border: outlineInputBorder.copyWith(),
              focusedBorder: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              disabledBorder: outlineInputBorder,
              errorBorder: outlineInputBorder,
              filled: !widget.isFilled,
              hintText: widget.hintText,
              labelText: '',
              suffixIcon: widget.suffixIcon,
              suffixIconConstraints: widget.suffixIcon != null
                  ? BoxConstraints(
                      maxWidth: 18.w,
                    )
                  : null,
              prefixIcon: widget.prefixIcon,
              helperStyle: TextStyle(height: 0.w),
              counterText: widget.counterText ?? '',
            ),
            obscuringCharacter: '*',
          ),
        ),
        if (widget.errorText != null && widget.errorText!.isNotEmpty)
          Text(
            widget.errorText!,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
