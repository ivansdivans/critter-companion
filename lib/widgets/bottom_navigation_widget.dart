import 'package:flutter/material.dart';
import 'package:critter_companion/util/constants.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigationWidget({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: PAGE_ADD_CRITTER,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: PAGE_CRITTER_LIST,
        ),
      ],
    );
  }
}