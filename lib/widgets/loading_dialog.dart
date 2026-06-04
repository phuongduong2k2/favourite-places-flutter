import 'package:flutter/material.dart';

class LoadingDialog {
  // 1. Show the loading dialog
  static void show(BuildContext context, {String message = 'Loading...'}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 8),
                  Text(
                    message,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
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
