import 'package:flutter/material.dart';

class LoadingDialog {
  // 1. Show the loading dialog
  static void show(BuildContext context, {String message = 'Loading...'}) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevents closing the dialog by tapping outside
      builder: (BuildContext context) {
        return PopScope(
          canPop:
              false, // Prevents closing the dialog via the system back button
          child: AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    message,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 2. Hide the loading dialog
  static void hide(BuildContext context) {
    // Simply pop the dialog off the navigation stack
    Navigator.of(context).pop();
  }
}
