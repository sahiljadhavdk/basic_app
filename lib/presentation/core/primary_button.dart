import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.function,
      this.width,
      this.height,
      this.borderRadius,
      this.elevation,
      this.borderColor,
      this.useAsSuffix = false,
      this.backgroundColor,
      this.textColor,
      this.textStyle,
      this.isDisabled = false,
      this.isPrefixIcon = false,
      this.isSuffixIcon = false,
      this.icon,
      this.isOnlyIcon = false})
      : super(key: key);
  final double? width, height, borderRadius, elevation;
  final Color? borderColor, backgroundColor, textColor;
  final String text;
  final bool useAsSuffix;
  final Function()? function;
  final bool isDisabled;
  final TextStyle? textStyle;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final Widget? icon;
  final bool isOnlyIcon;

  @override
  Widget build(BuildContext context) {
    return isOnlyIcon
        ? Padding(
            padding: useAsSuffix
                ? EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp)
                : EdgeInsets.zero,
            child: ElevatedButton(
              onPressed: isDisabled ? null : function,
              style: buttonStyle(context),
              child: icon,
            ))
        : Padding(
            padding: useAsSuffix
                ? EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp)
                : EdgeInsets.zero,
            child: isPrefixIcon
                ? ElevatedButton.icon(
                    onPressed: function,
                    icon: icon as Widget,
                    label: buttonLabel(context, text),
                    style: buttonStyle(context),
                  )
                : isSuffixIcon
                    ? Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: function,
                          icon: icon as Widget,
                          label: buttonLabel(context, text),
                          style: buttonStyle(context),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: isDisabled ? null : function,
                        style: buttonStyle(context),
                        child: buttonLabel(context, text),
                      ),
          );
  }

  Text buttonLabel(BuildContext context, String text) {
    return Text(
      text,
      style: textStyle ??
          Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
    );
  }

  ButtonStyle buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      minimumSize: Size(width ?? 100.w, height ?? 7.h),
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      side: BorderSide(
        color: borderColor ?? Colors.transparent,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 4.w),
      ),
      elevation: elevation,
    );
  }
}
