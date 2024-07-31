import 'package:flutter/material.dart';
import 'package:savvy_snackbars/enums/animate_from.dart';
import 'package:savvy_snackbars/savvy_snackbars.dart';

class SnackHelper {
  static void showStandardizedSnackbar(BuildContext context) {
    SavvySnackBars.showStandardizedSnackbar(
      context: context,
      backgroundColor: Colors.amberAccent.shade100,
      animationCurve: Curves.ease,
      animateFrom: AnimateFrom.fromTop,
      leading: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.check,
          color: Colors.black,
        ),
      ),
      titleWidget: const Text(
        "Hello There",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subTitleWidget: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          "Good Morning",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static void showCustomSnackBar(BuildContext context) {
    SavvySnackBars.showCustomSnackBar(
      context: context,
      persist: true,
      duration: const Duration(milliseconds: 1000),
      animationCurve: Curves.bounceOut,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent.shade100,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.2),
              ),
              child: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "Drag to remove snack",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  static void showProgressiveSnackBar(BuildContext context) {
    SavvySnackBars.showCustomSnackBar(
      context: context,
      duration: const Duration(milliseconds: 1000),
      animateFrom: AnimateFrom.fromBottom,
      distanceToTravel: 0.0,
      outerPadding: const EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(
            height: 5,
            child: LinearProgressIndicator(
              backgroundColor: Colors.redAccent.shade100,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            color: Colors.redAccent.shade100,
            child: Row(
              children: [
                const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.black,
                  size: 24,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Please wait, loading data...",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Stop",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
