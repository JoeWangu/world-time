import 'package:flapp/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(endpoint: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(
      endpoint: 'Europe/Berlin',
      location: 'Athens',
      flag: 'greece.png',
    ),
    WorldTime(endpoint: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(
      endpoint: 'Africa/Nairobi',
      location: 'Nairobi',
      flag: 'kenya.png',
    ),
    WorldTime(
      endpoint: 'America/Chicago',
      location: 'Chicago',
      flag: 'usa.png',
    ),
    WorldTime(
      endpoint: 'America/New_York',
      location: 'New York',
      flag: 'usa.png',
    ),
    WorldTime(
      endpoint: 'Asia/Seoul',
      location: 'Seoul',
      flag: 'south_korea.png',
    ),
    WorldTime(
      endpoint: 'Asia/Jakarta',
      location: 'Jakarta',
      flag: 'indonesia.png',
    ),
  ];

  void updateTime(index) {
    // void updateTime(index) async {
    WorldTime instance = locations[index];
    // await instance.getTime();
    if (!mounted) return;
    // Navigator.pop(context, {
    Navigator.pushReplacementNamed(
      context,
      '/',
      arguments: {
        'location': instance.location,
        'flag': instance.flag,
        // 'time': instance.time,
        'endpoint': instance.endpoint,
        // 'isDaytime': instance.isDaytime,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                  // print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/${locations[index].flag}',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
