import 'package:flutter/material.dart';

// NOTE: This is a custom chip widget, you can customize it as you like.
class OptionChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionChip({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      padding: const EdgeInsets.all(8),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(label),
      onPressed: onTap,
      backgroundColor: isSelected ? Colors.orange : Colors.red,
      shadowColor: Colors.transparent,
      labelStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
