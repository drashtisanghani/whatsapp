import 'package:flutter/material.dart';
import 'package:whatsapp/status.dart';

import 'call.dart';
import 'camera.dart';
import 'chat.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  TabController? abc;
  @override
  void initState() {
    super.initState();
    abc = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          elevation: 20,
          backgroundColor: Colors.teal[600],
          child: Icon(Icons.chat),
          onPressed: () {}),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[600],
        title: Text("WhatsApp"),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: Column(children: [
        Container(
          color: Colors.teal[600],
          child: TabBar(controller: abc, tabs: [
            Tab(
              child: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              child: Text("Chat"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Call"),
            ),
          ]),
        ),
        Expanded(
          child: TabBarView(controller: abc, children: [
            Camera(),
            Chat(),
            Status(),
            Call(),
          ]),
        ),
      ]),
    );
  }
}
