import 'package:api_provider/providers/users.dart';
import 'package:api_provider/ui/over_view.dart';
import 'package:api_provider/ui/users_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OverView(),
    );
  }
}
