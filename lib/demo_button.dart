import 'package:flutter/material.dart';
import 'package:flutter_todo/Keys/Keys.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  State<DemoButtons> createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print("Demo buttons called");
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    _isUnderstood = false;
                  });
                },
                child: const Text("No")),
            TextButton(
                onPressed: () {
                  setState(() {
                    _isUnderstood = true;
                  });
                },
                child: const Text("Yes"))
          ],
        ),
        if (_isUnderstood) const Text("You did it"),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Keys()));
            },
            child: const Text('Enabled Sort'),
          ),
        )
      ],
    );
  }
}
