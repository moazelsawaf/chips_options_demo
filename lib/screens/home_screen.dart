import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../widgets/option_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // NOTE: This list contain all the options, you can change the data type and options from here.
  final List<String> _options = ['Option1', 'Option2', 'Option3'];

  // NOTE: This variable stores the index of the current selected option and its initial index is 0,
  // you can change it to any index within the range of the list.
  int _selectedOptionIndex = 0;

  // NOTE: This function changes the stored selected index and rebuild the screen after the change.
  void _onOptionSelected(int index) {
    if (index != _selectedOptionIndex) {
      setState(() {
        _selectedOptionIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Chips Options Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(width: double.infinity),
            // NOTE: This wrap widget contains all the options, you may use any widget instead, e.g. Row, ListView, etc.
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: _options.mapIndexed((index, option) {
                return OptionChip(
                  label: option,
                  isSelected: _selectedOptionIndex == index,
                  onTap: () => _onOptionSelected(index),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            // NOTE: As displayed here, we have access to the current selected index and option, you may use them as you want.
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selected Option Index: $_selectedOptionIndex',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Selected Option: ${_options[_selectedOptionIndex]}',
                    style: const TextStyle(
                      // color: Colors.,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
