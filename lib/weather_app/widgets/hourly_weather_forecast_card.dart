import 'package:flutter/material.dart';

class HourlyWeatherForecastCard extends StatelessWidget {
  final String hours;
  final String temperature;
  const HourlyWeatherForecastCard({
    super.key,
    required this.hours,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              hours,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 6,
            ),
            const Icon(
              Icons.cloud,
              size: 32,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              temperature,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
