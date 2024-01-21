import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/user.dart';

class DetailsPage extends StatelessWidget {
  int index;
   DetailsPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(context.watch<User>().userDetail[index][1]),
          Text(context.watch<User>().userDetail[index][2].toString()),
          Text(context.watch<User>().userDetail[index][0]),
        ],
      ),
      
    );
  }
}
