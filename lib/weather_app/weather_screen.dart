import 'dart:ui';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Refresh clicked");
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              elevation: 10,
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(
                          "300.67°F",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rain",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HoulyWeatherForecastCard(),
                  HoulyWeatherForecastCard(),
                  HoulyWeatherForecastCard(),
                  HoulyWeatherForecastCard(),
                  HoulyWeatherForecastCard(),
                  HoulyWeatherForecastCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Additional Information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AdditionalInfoItem(),
                AdditionalInfoItem(),
                AdditionalInfoItem()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AdditionalInfoItem extends StatelessWidget {
  const AdditionalInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Icon(
        Icons.water_drop,
        size: 32,
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        "Humidity",
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        "94",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    ]);
  }
}

class HoulyWeatherForecastCard extends StatelessWidget {
  const HoulyWeatherForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "09:00",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Icon(
              Icons.cloud,
              size: 32,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "301.17",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
