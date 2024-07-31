import 'package:custom_snacks/snack_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Custom SnackBars',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CupertinoButton(
              color: Colors.amberAccent.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              onPressed: () {
                SnackHelper.showStandardizedSnackbar(context);
              },
              child: const Text(
                "Standardized SnackBar",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          CupertinoButton(
            color: Colors.redAccent.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            onPressed: () {
              SnackHelper.showProgressiveSnackBar(context);
            },
            child: const Text(
              "Progressive SnackBar",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          CupertinoButton(
            color: Colors.greenAccent.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            onPressed: () {
              SnackHelper.showCustomSnackBar(context);
            },
            child: const Text(
              "Dismissible SnackBar",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
