import 'package:flutter/material.dart';
import 'package:critter_companion/util/constants.dart';

class CritterListPage extends StatelessWidget {
  const CritterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(PAGE_CRITTER_LIST)),
      body: const Center(
        child: Text(
          PAGE_CRITTER_LIST,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
