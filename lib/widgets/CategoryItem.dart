import 'package:chatforum/Helper/AuthHelper.dart';
import 'package:flutter/material.dart';

import '../util/MyRoutes.dart';

class CategoryItem extends StatelessWidget {
  var content="";
  var index=0;
  CategoryItem({Key? key,required this.content,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      AuthHelper.ChoosedCategory=AuthHelper.Categories[index];
      Navigator.pushNamed(context, MyRoutes.ChatBox);
    },child: Card(child:
      ListTile(title: Text(content,style: TextStyle(fontSize: 20),),)
      ,elevation: 5.0,));
  }
}
