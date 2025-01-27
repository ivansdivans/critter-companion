import 'package:critter_companion/theme.dart';
import 'package:critter_companion/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:critter_companion/pages/add_critter_page.dart';
import 'package:critter_companion/pages/critter_list_page.dart';
import 'package:critter_companion/widgets/bottom_navigation_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: critterCompanionTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    AddCritterPage(),
    CritterListPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(APP_NAME)),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
