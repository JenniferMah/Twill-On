import 'package:flutter/material.dart';
import 'package:twill_on/widgets/category_selector/archive_selector.dart';
import 'package:twill_on/widgets/recent_chats.dart';

class ArchivedScreen extends StatefulWidget {
  @override
  _ArchivedScreenState createState() => _ArchivedScreenState();
}

class _ArchivedScreenState extends State<ArchivedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, //makes background blue
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Twill-On',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          //search icon
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      //menu selector/segmented controller
      body: Column(
        children: <Widget>[
          ArchievedSelector(),
          // curved part
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  //recent chats widget //can i push onto this
                  // RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
