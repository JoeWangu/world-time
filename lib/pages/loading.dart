import 'package:flutter/material.dart';
import 'package:flapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // Map<String, dynamic> zone = {};
  WorldTime area = WorldTime(
    // location: 'Berlin',
    // flag: 'berlin.png',
    // endpoint: 'Europe/Berlin',
    location: 'Nairobi',
    flag: 'kenya.png',
    endpoint: 'Africa/Nairobi',
  );

  @override
  void initState() {
    super.initState();

    _extractArguments();
    setupWorldTime();
  }

  void _extractArguments() {
    // Use WidgetsBinding to ensure context is ready (fixes early nulls)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return; // Safety check

      // final args = ModalRoute.of(context)?.settings.arguments;
      var zone = ModalRoute.of(context)?.settings.arguments;
      print('zone: $zone');
      // print('Args extracted: $args'); // Debug: Prints once
      // data.isNotEmpty ? data:

      if (zone is Map<String, dynamic>) {
        print('zone after casting: $zone');
        setState(() {
          area = WorldTime(
            location: zone['location'],
            flag: zone['flag'],
            endpoint: zone['endpoint'],
          );
          // _isLoading = false;
        });
      }
    });
  }

  void setupWorldTime() async {
    print('area after zone check: $area');
    await area.getTime();
    print('area after setupWorldTime: $area');
    if (!mounted) return;
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: {
        'location': area.location,
        'flag': area.flag,
        'time': area.time,
        'isDaytime': area.isDaytime,
      },
    );
    // print(area.time);
    // setState(() {
    //   time = area.time;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(child: SpinKitFoldingCube(color: Colors.white, size: 50.0)),
    );
  }
}
