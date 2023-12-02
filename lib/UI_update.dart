import 'package:flutter/material.dart';
import 'package:flutter_todo/demo_button.dart';

class UIupdateDemo extends StatelessWidget {
  const UIupdateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    print(UIupdateDemo());
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Do you understand how Flutter updates UIs?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24.0,
              ),
              DemoButtons()
            ],
          ),
        ));
  }
}
