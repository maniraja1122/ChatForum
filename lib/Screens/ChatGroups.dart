import 'package:chatforum/Helper/AuthHelper.dart';
import 'package:chatforum/widgets/CategoryItem.dart';
import 'package:flutter/material.dart';



class ChatGroups extends StatefulWidget {
  const ChatGroups({Key? key}) : super(key: key);

  @override
  State<ChatGroups> createState() => _ChatGroupsState();
}
initState(){
  AuthHelper.id=DateTime.now().microsecondsSinceEpoch.toString();
}
class _ChatGroupsState extends State<ChatGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(itemBuilder:(context,i){
          return CategoryItem(content: AuthHelper.Categories[i], index: i);
        },itemCount: AuthHelper.Categories.length,),
      ),
    );
  }
}
