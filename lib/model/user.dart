import 'package:flutter/material.dart';

class User extends ChangeNotifier{

List userDetail = [];


void addUser(String name, String address, int phone){

userDetail.add([name,address,phone]);

notifyListeners();


}





}