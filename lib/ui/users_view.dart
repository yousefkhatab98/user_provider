import 'package:api_provider/models/user.dart';
import 'package:api_provider/providers/users.dart';
import 'package:api_provider/ui/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class UsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Users(),
      child: Consumer<Users>(
        // ignore: missing_return
        builder: (BuildContext context, users, child) {
          final users = Provider.of<Users>(context, listen: false);
          users.getData();
          if (!users.list.isEmpty) {
            return ListView.builder(
              itemCount: users.getLength(),
              itemBuilder: (BuildContext context, int index) {
                return CardItem(users, index);
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
