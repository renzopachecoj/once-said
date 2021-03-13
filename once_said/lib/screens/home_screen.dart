import 'package:flutter/material.dart';
import 'package:once_said/screens/home_content.dart';
import 'constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _titles = ["Once Said...", "Saved Quotes"];
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),
      body: HomeContent(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
              backgroundColor: BOTTOM_NAV_BACKGROUND_COLOR),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_quote_rounded),
              label: 'Saved Quotes',
              backgroundColor: BOTTOM_NAV_BACKGROUND_COLOR)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ACCENT_COLOR,
        onTap: _onNavItemTapped,
      ),
    );
  }
}
