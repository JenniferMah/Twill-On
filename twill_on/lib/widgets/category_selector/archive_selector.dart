import 'package:flutter/material.dart';
import 'package:twill_on/screens/archived_screen.dart';
import 'package:twill_on/screens/available_screen.dart';
import 'package:twill_on/screens/home_screen.dart';

class ArchievedSelector extends StatefulWidget {
  @override
  _ArchievedSelectorState createState() => _ArchievedSelectorState();
}

class _ArchievedSelectorState extends State<ArchievedSelector> {
  int selectedIndex = 2; //need go pass this in from screen
  final List<String> categories = ['Active', 'Available', 'Archived'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      //code for segment control
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                // print(selectedIndex);
                if (selectedIndex == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  );
                }

                if (selectedIndex == 1) {
                  print(categories[index]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AvailableScreen(),
                    ),
                  );
                }

                if (selectedIndex == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ArchivedScreen(),
                    ),
                  );
                }
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
