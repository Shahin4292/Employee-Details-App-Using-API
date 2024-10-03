import 'package:employee_detail/model/user_model.dart';
import 'package:employee_detail/service/service.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  List<User> userModel = [];

  myUser() {
    userItems().then((value) {
      setState(() {
        userModel = value;
      });
    });
  }

  @override
  void initState() {
    myUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Bio Data From Api"),
      ),
    );
  }
}
