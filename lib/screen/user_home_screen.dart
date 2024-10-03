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
        centerTitle: true,
        title: const Text("Employee Bio Data From Api"),
      ),
      body: ListView.builder(
          itemCount: userModel.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final users = userModel[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.blue[100],
                            backgroundImage: NetworkImage(users.image),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
