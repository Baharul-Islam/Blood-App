import 'package:bimanticket/screen/home-screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetOptions=<Widget>[
    HomeScreen(),
    const Text("search"),
    const Text("tikets"),
    const Text("profile"),

  ];
  //akti variable ke noton variable declare korar jonna code
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:Center(child: Text("biman ticket")),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_home_regular),label: "home"),
          BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_search_regular),label: "home"),
          BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_ticket_regular),label: "home"),
          BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_person_regular),label: "home")
        ],
      ),
    );
  }
}
