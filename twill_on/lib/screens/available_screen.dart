import 'package:flutter/material.dart';
import 'package:twill_on/widgets/available_company.dart';
import 'package:twill_on/widgets/category_selector.dart';

class AvailableScreen extends StatefulWidget {
  @override
  _AvailableScreenState createState() => _AvailableScreenState();
}

class _AvailableScreenState extends State<AvailableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, //makes background blue
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
          CategorySelector(),
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
                  //recent chats widget
                  // RecentChats(),
                  AvalibleCompany()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
