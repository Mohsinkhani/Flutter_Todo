import 'package:flutter/material.dart';
import 'package:flutter_todo/UI_update.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tododemo"),
        ),
        body: UIupdateDemo(),
      ),
    );
  }
}
