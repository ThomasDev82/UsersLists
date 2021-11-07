import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}

class UsersScreen extends StatelessWidget {
  // const UsersScreen({Key? key}) : super(key: key);

  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Thomas Matta',
      phone: '+201276129625',
    ),
    UserModel(
      id: 2,
      name: 'Andy',
      phone: '+20111534548',
    ),
    UserModel(
      id: 3,
      name: 'Derek',
      phone: '+201146892559',
    ),
    UserModel(
      id: 4,
      name: 'Felix',
      phone: '+201117754313',
    ),
    UserModel(
      id: 5,
      name: 'Jones',
      phone: '+209745582859',
    ),
    UserModel(
      id: 6,
      name: 'Frank',
      phone: '+201115342559',
    ),
    UserModel(
      id: 7,
      name: 'Faris',
      phone: '+201115328559',
    ),
    UserModel(
      id: 8,
      name: 'Floyd',
      phone: '+201215344559',
    ),
    UserModel(
      id: 9,
      name: 'Aya',
      phone: '+201115326459',
    ),
    UserModel(
      id: 10,
      name: 'Dylan',
      phone: '+201163247859',
    ),
    UserModel(
      id: 11,
      name: 'Harley',
      phone: '+201115343379',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Users',
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            color: Colors.grey[300],
            height: 1,
          ),
          itemCount: users.length,
        ));
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 25),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${user.phone}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
