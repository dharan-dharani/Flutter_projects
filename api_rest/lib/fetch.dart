
import 'package:api_rest/service.dart';
import 'package:api_rest/users.dart';
import 'package:flutter/material.dart';


class fetch extends StatefulWidget{
  const fetch ({super.key});
  @override
  fetchapi createState()=>fetchapi();
}
class fetchapi extends State<fetch>
{

  @override
  void initState()
  {
    super.initState();
    fetchuserapi();
  }

  List<User> user=[];
  @override
  Future<void> fetchuserapi() async {
    final response =await Api.fetchuser();
    setState((){
        user=response;
    });
  }

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
        body: ListView.builder(
            itemCount: user.length,
            itemBuilder: (context,index)
        {
          final users=user[index];
          final email=users.email;
          final phone=users.phone;
          return ListTile(
            leading: Text('${index+1}'),
            title: Text(email),
            subtitle:Text(phone),
          );
        }),

    );
  }
}
