library savvy_snackbars;

import 'package:flutter/material.dart';
import 'package:savvy_snackbars/enums/animate_from.dart';
import 'package:savvy_snackbars/snackbars/custom_snackbars.dart';
import 'package:savvy_snackbars/snackbars/pre_defined_snacks.dart';

class SavvySnackBars {
  static void _removeOverlayEntry(OverlayEntry overlayEntry) {
    overlayEntry.remove();
  }

  static void showStandardizedSnackbar({
    required BuildContext context,
    String? title,
    String? subTitle,
    TextStyle? titleStyle,
    TextStyle? subTitleStyle,
    Widget? titleWidget,
    Widget? subTitleWidget,
    Widget? leading,
    Widget? trailing,
    Color? backgroundColor,
    Duration? duration,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry? outerPadding,
    BorderRadius? borderRadius,
    Curve? animationCurve,
    AnimateFrom? animateFrom,
    double? elevation,
    Color? shadowColor,
    bool? persist,
    double? distanceToTravel,
  }) {
    duration ??= const Duration(milliseconds: 1000);
    final overlayState = Overlay.of(context);
    OverlayEntry? snackBar;
    snackBar = OverlayEntry(
      builder: (_) => PredefinedSnack(
        title: title ??= "",
        subTitle: subTitle ??= "",
        titleStyle: titleStyle ??= const TextStyle(color: Colors.white),
        subTitleStyle: subTitleStyle ??= const TextStyle(color: Colors.white),
        titleWidget: titleWidget,
        subTitleWidget: subTitleWidget,
        leading: leading,
        trailing: trailing,
        backgroundColor: backgroundColor ??= Colors.blue,
        duration: duration!,
        contentPadding: contentPadding ??= const EdgeInsets.all(20),
        borderRadius: borderRadius ??= BorderRadius.circular(10),
        animationCurve: animationCurve ??= Curves.ease,
        outerPadding: outerPadding ??=
            const EdgeInsets.symmetric(horizontal: 10),
        animateFrom: animateFrom ??= AnimateFrom.fromBottom,
        elevation: elevation ??= 0.0,
        shadowColor: shadowColor,
        distanceToTravelFromStartToEnd: distanceToTravel ??= 20,
        persist: persist ??= false,
        onDismissed: persist!
            ? () {
                if (snackBar != null) {
                  _removeOverlayEntry(snackBar);
                }
              }
            : () {},
      ),
    );
    overlayState.insert(snackBar);
    if (persist == null || !persist!) {
      Future.delayed(duration * 2, snackBar.remove);
    }
  }

  static void showCustomSnackBar({
    required BuildContext context,
    Widget? child,
    Duration? duration,
    Curve? animationCurve,
    AnimateFrom? animateFrom,
    EdgeInsetsGeometry? outerPadding,
    double? elevation,
    Color? shadowColor,
    bool? persist,
    double? distanceToTravel,
  }) {
    duration ??= const Duration(milliseconds: 1000);
    final overlayState = Overlay.of(context);
    OverlayEntry? snackBar;
    snackBar = OverlayEntry(
      builder: (_) => CustomSnackbar(
        duration: duration ??= const Duration(milliseconds: 1000),
        animationCurve: animationCurve ??= Curves.ease,
        animateFrom: animateFrom ??= AnimateFrom.fromBottom,
        outerPadding: outerPadding ??=
            const EdgeInsets.symmetric(horizontal: 10),
        elevation: elevation ??= 0.0,
        shadowColor: shadowColor,
        persist: persist ??= false,
        distanceToTravelFromStartToEnd: distanceToTravel ??= 20,
        onDismissed: persist!
            ? () {
                if (snackBar != null) {
                  _removeOverlayEntry(snackBar);
                }
              }
            : () {},
        child: child ??= Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: const Text(
            "Create Your Custom SnackBar",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
    overlayState.insert(snackBar);
    if (persist == null || !persist!) {
      Future.delayed(duration! * 2, snackBar.remove);
    }
  }
}
