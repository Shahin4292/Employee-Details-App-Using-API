import 'package:http/http.dart' as http;

import '../model/user_model.dart';

userItems() async {
  Uri url = Uri.parse("https://dummyjson.com/users");
  var response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      var data = userModelFromJson(response.body);
      return data.users;
    } else {
      print("error occur");
    }
  } catch (e) {
    print(e.toString());
  }
}
