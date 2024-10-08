import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;

  const AdditionalInfoItem(
      {super.key,
      required this.label,
      required this.icon,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        size: 32,
      ),
      const SizedBox(
        height: 6,
      ),
      Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      const SizedBox(
        height: 6,
      ),
      Text(
        value,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    ]);
  }
}
