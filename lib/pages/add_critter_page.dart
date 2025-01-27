import 'package:flutter/material.dart';
import 'package:critter_companion/util/constants.dart';

class AddCritterPage extends StatelessWidget {
  const AddCritterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(PAGE_ADD_CRITTER, style: TextStyle(fontSize: 24)),
    );
  }
}
