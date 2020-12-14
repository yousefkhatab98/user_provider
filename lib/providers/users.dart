import 'package:api_provider/models/user.dart';
import 'package:api_provider/services/api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class Users with ChangeNotifier {
  List<User> _post = [];
  Service service = Service();

  getData() async {
    _post = await service.getData();
    notifyListeners();
  }

  int getLength() {
    return _post.length;
  }

  List<User> get list {
    return [..._post];
  }

}
