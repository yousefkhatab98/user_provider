import 'package:api_provider/models/user.dart';
import 'package:api_provider/providers/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget {
  Users _users = Users();
  int index;
  CardItem(this._users, this.index);
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<Users>(context);
    final user = users.list[index];
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 10,
              child: Text(
                '${user.id}',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black45,
            ),
            title: Text('name:${user.name}\n'
                'username:${user.username}'),
            subtitle: Text('email:${user.email}\n'
                'phone:${user.phone}\n'
                'website:${user.website}\n'
                'adress:${user.address.street},${user.address.suite},${user.address.city}\n'
                'lat:${user.address.geo.lat},lng:${user.address.geo.lng}'),
          )
        ],
      ),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}
