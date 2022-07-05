import 'package:chatforum/Helper/AuthHelper.dart';
import 'package:chatforum/widgets/CategoryItem.dart';
import 'package:chatforum/widgets/MessageItem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  ChatBox({Key? key}) : super(key: key);
  var message = "";
  var ckey = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AuthHelper.ChoosedCategory),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
                child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection(AuthHelper.ChoosedCategory)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                      snapshot) {
                if(snapshot.hasError){
                  return Text("Error");
                }
                else if(snapshot.hasData){
                  var data=snapshot.data;
                  return ListView.builder(itemBuilder: (context,i){
                    return MessageItem(id: data!.docs[i].get("id"), message:  data.docs[i].get("message"));
                  },itemCount: data!.docs.length,);
                }
                return Container(child: CircularProgressIndicator());
              },
            )),
            Row(
              children: [
                Flexible(
                    child: TextFormField(
                  decoration: InputDecoration(hintText: "Enter Here"),
                  controller: ckey,
                  onChanged: (m) {
                    message = m;
                  },
                )),
                ElevatedButton(
                    onPressed: () {
                      if (message != "") {
                        FirebaseFirestore.instance
                            .collection(AuthHelper.ChoosedCategory)
                            .doc(DateTime.now()
                                .microsecondsSinceEpoch
                                .toString())
                            .set({"id": AuthHelper.id, "message": message});
                        message = "";
                        ckey.clear();
                      }
                    },
                    child: Icon(Icons.send))
              ],
            )
          ],
        ),
      ),
    );
  }
}
