// ignore_for_file: must_be_immutable, use_super_parameters

import 'package:savvy_snackbars/snackbars/parent_snacks.dart';

/// A widget to create smart snackbar with highly customized child.
class CustomSnackbar extends ParentSnacks {
  CustomSnackbar({
    super.key,
    required child,
    required duration,
    required animationCurve,
    required animateFrom,
    required outerPadding,
    required elevation,
    required persist,
    required onDismissed,
    distanceToTravelFromStartToEnd,
    shadowColor,
    borderRadius,
    backgroundColor,
  }) : super(
          child: child,
          duration: duration,
          animationCurve: animationCurve,
          animateFrom: animateFrom,
          outerPadding: outerPadding,
          elevation: elevation,
          persist: persist,
          onDismissed: onDismissed,
          shadowColor: shadowColor,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
          distanceToTravelFromStartToEnd: distanceToTravelFromStartToEnd,
        );
}
