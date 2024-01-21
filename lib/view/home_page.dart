import 'package:go_router/go_router.dart';

import 'detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/user.dart';
import 'package:provider_demo/routes/routes.dart';
import 'package:provider_demo/routes/routes_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,),
      floatingActionButton: FloatingActionButton(onPressed:()=> showDialog(context: context, builder: (context) => AlertDialog(
        title: Text('Add New User'),
        content: Column(
        children: [
          
          TextField(
            controller: nameController,
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Name'),
            
          )
          ,TextField(
            controller: addressController,
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Address'),
            
          )
          ,TextField(
            controller: phoneController,
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Phone'),
            
          )],),
          actions: [OutlinedButton(onPressed: (){

            context.read<User>().addUser(nameController.text, addressController.text, int.parse(phoneController.text));
            Navigator.of(context).pop();
            nameController.clear();
            addressController.clear();
            phoneController.clear();

          }, child: Text('Save')), 
          
          OutlinedButton(onPressed: (){

            Navigator.of(context).pop();
            nameController.clear();
            addressController.clear();
            phoneController.clear();

          }, child: Text('Cancel'))],
      )), child: Icon(Icons.add),),
      body: Padding(padding: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: ListView.builder(
        itemCount: context.watch<User>().userDetail.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(context.watch<User>().userDetail[index][0]), 
            subtitle: Text(context.watch<User>().userDetail[index][2].toString()),
            tileColor: Colors.amber,
                 
            // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(index: index),)),
            onTap: () => context.go('/${RouteName.second}'),
            )
        ),
        )
      ),

    );
  }
}