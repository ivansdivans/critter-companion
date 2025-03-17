import 'package:flutter/material.dart';
import 'package:critter_companion/util/constants.dart';

class AddCritterPage extends StatefulWidget {
  const AddCritterPage({super.key});

  @override
  AddCritterPageState createState() => AddCritterPageState();
}

class AddCritterPageState extends State<AddCritterPage> {
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  void _resetInput() {
    _descriptionController.clear();
  }

  void _submitInput() {
    print("Description: \${_descriptionController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(PAGE_ADD_CRITTER),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _descriptionController,
                maxLines: 10,
                maxLength: 500,
                decoration: const InputDecoration(
                  labelText: LABEL_CRITTER_INPUT,
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton.icon(
                      onPressed: _resetInput,
                      icon: const Icon(Icons.cleaning_services),
                      label: const Text(LABEL_BUTTON_RESET),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: FilledButton.icon(
                      onPressed: _submitInput,
                      icon: const Icon(Icons.auto_fix_high),
                      label: const Text(LABEL_BUTTON_SUMBIT),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
