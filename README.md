<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

# This package offers endless creative potential.

## Features

#### This package provides an easy-to-use snackbar component that can be quickly integrated into your application.

#### It offers a wide range of customization features, allowing you to tailor the snackbar's appearance and behavior to suit your specific needs.

#### You can adjust various design elements, such as colors, fonts, and sizes, to match your application's theme.

## Getting started

Simply add the savvy_snackbars dependency, and you'll be able to craft stunning SnackBars with your creative touch.

## Usage

### A snackbar with a ready-made user interface

```dart
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
```

### A SnackBar with persistent visibility and an easy dismissal option

```dart
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
```

### A snackbar featuring a loading animation while a network call is in progress

```dart
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
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

```

```

# savvy_snackbars
