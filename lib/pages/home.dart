import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};
  // bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _extractArguments(); // Extract once here
  }

  void _extractArguments() {
    // Use WidgetsBinding to ensure context is ready (fixes early nulls)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return; // Safety check

      final args = ModalRoute.of(context)?.settings.arguments;
      // print('Args extracted: $args'); // Debug: Prints once
      // data.isNotEmpty ? data:

      if (args is Map<String, dynamic>) {
        setState(() {
          data = data.isNotEmpty ? data : args;
          // _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String bgImage = (data['isDaytime'] == true)
        ? 'day.png'
        : 'night.png';
    Color? bgColor = (data['isDaytime'] == true)
        ? Colors.blue
        : Colors.indigo[700];
    // final args = ModalRoute.of(context)?.settings.arguments;
    // print(args.toString());
    // if (args != null && timedata == null) {
    //   if (args is Map) {
    //     timedata = args;
    //   }
    // }
    // if (_isLoading) {
    //   // Show spinner while waiting for args to settle
    //   return Scaffold(body: Center(child: CircularProgressIndicator()));
    // }

    // if (timedata != null) {
    //   print(timedata);
    // }

    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async {
                    // _isLoading = true;
                    dynamic result = await Navigator.pushNamed(
                      context,
                      '/location',
                    );
                    setState(() {
                      data = {
                        'location': result['location'],
                        'flag': result['flag'],
                        'time': result['time'],
                        'isDaytime': result['isDaytime'],
                      };
                      // _isLoading = false;
                    });
                  },
                  icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                  label: Text(
                    "Edit location",
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ),
                // TextButton.icon(
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/');
                //   },
                //   icon: Icon(
                // Icons.apple,
                // color: Colors.white,
                // ),
                //   label: Text("loading"),
                // ),
                SizedBox(height: 20),
                Image.asset('assets/${data['flag'] ?? 'kenya.png'}'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'] ?? 'Loading...',
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  data['time'] ?? 'Loading...',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
