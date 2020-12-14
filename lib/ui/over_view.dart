import 'package:api_provider/ui/users_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: UsersView(),
    );
  }
}
