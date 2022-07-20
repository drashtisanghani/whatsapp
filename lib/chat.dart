import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("Vaibhav"),
        subtitle: Row(
          children: [
            Icon(Icons.missed_video_call),
            Text("Miss video call at 10:03am"),
          ],
        ),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("10:09am"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("pkau"),
        subtitle: Text("ha"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("6:22pm"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("Tirth Tution"),
        subtitle: Text("tution ma kem ny avyo?"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("3:09pm"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("Radhi Tution"),
        subtitle: Text("ok"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("1:00pm"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("kinju"),
        subtitle: Text("hello"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("yesterday"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("doremon"),
        subtitle: Text("kale bar jaye?"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("yesterday"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("mom"),
        subtitle: Text("ghare av hve"),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("yesterday"),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
        ),
        tileColor: Colors.grey[100],
        title: Text("parth"),
        subtitle: Row(
          children: [
            Icon(Icons.image),
            Text("photos"),
          ],
        ),
        trailing: Column(
          children: [
            Icon(Icons.done_all),
            Text("08/03/2022"),
          ],
        ),
      ),
    ]);
  }
}
