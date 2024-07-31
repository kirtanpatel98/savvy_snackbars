// ignore_for_file: use_super_parameters, must_be_immutable
import 'package:flutter/material.dart';
import 'package:savvy_snackbars/snackbars/parent_snacks.dart';

/// A widget to create default styled smart snackbar.
class PredefinedSnack extends ParentSnacks {
  PredefinedSnack({
    super.key,
    required title,
    required subTitle,
    required titleStyle,
    required subTitleStyle,
    required backgroundColor,
    required duration,
    required contentPadding,
    required outerPadding,
    required borderRadius,
    required animationCurve,
    required animateFrom,
    required elevation,
    required persist,
    required onDismissed,
    titleWidget,
    subTitleWidget,
    leading,
    trailing,
    shadowColor,
    distanceToTravelFromStartToEnd,
  }) : super(
          shadowColor: shadowColor,
          duration: duration,
          animationCurve: animationCurve,
          animateFrom: animateFrom,
          elevation: elevation,
          persist: persist,
          onDismissed: onDismissed,
          outerPadding: outerPadding,
          backgroundColor: backgroundColor,
          borderRadius: borderRadius,
          distanceToTravelFromStartToEnd: distanceToTravelFromStartToEnd,
          child: Container(
            padding: contentPadding,
            child: Row(
              children: [
                if (leading != null) leading!,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title.isNotEmpty
                        ? Text(
                            title,
                            style: titleStyle,
                          )
                        : titleWidget != null
                            ? titleWidget!
                            : const SizedBox(),
                    subTitle.isNotEmpty
                        ? Text(
                            subTitle,
                            style: subTitleStyle,
                          )
                        : subTitleWidget != null
                            ? subTitleWidget!
                            : const SizedBox(),
                  ],
                ),
                const Spacer(),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        );
}
