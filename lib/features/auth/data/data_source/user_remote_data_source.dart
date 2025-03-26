import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class UserRemoteDataSource {
  Future<List<UserModel>> fetchUsersFromApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((user) => UserModel.fromJson(user)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
}
