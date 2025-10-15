  import 'package:flutter/material.dart';

  class MyTab extends StatelessWidget {
    final String iconPath;
    final String text;
    const MyTab({super.key, required this.iconPath,required this.text});

    @override
    Widget build(BuildContext context) {
      return Tab(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                iconPath,
                color: Colors.grey[600],
                height: 30,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      );
    }
  }