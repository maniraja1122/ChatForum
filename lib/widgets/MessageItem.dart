import 'package:flutter/material.dart';

import '../Helper/AuthHelper.dart';

class MessageItem extends StatelessWidget {
  String id="";
  String message="";
  MessageItem({Key? key,required this.id,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
        alignment: (AuthHelper.id != id?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (AuthHelper.id != id?Colors.grey.shade200:Colors.blue[200]),
          ),
          padding: EdgeInsets.all(16),
          child: Text(message, style: TextStyle(fontSize: 15),),
        ),
      ),
    );
  }
}
