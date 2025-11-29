import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String endpoint;
  bool isDaytime = false;

  WorldTime({
    required this.location,
    required this.flag,
    required this.endpoint,
  });

  @override
  String toString() {
    return 'WorldTime(location: $location, flag: $flag, endpoint: $endpoint)';
  }
  // http://worldtimeapi.org/api/timezone/Europe/Berlin

  Future<void> getTime() async {
    try {
      var url = Uri(
        scheme: 'https',
        // host: 'worldtimeapi.org',
        // path: 'api/timezone/$endpoint',
        host: 'timeapi.io',
        path: 'api/time/current/zone',
        queryParameters: {'timeZone': endpoint}
        // fragment: 'numbers', // url#numbers
      );

      // print(url);

      // var response = {
      //   "utc_offset": "+03:00",
      //   "timezone": "Africa/Nairobi",
      //   "day_of_week": 5,
      //   "day_of_year": 318,
      //   "datetime": "2025-11-14T11:15:41.135617+03:00",
      //   "utc_datetime": "2025-11-14T08:15:41.135617+00:00",
      //   "unixtime": 1763108141,
      //   "raw_offset": 10800,
      //   "week_number": 46,
      //   "dst": false,
      //   "abbreviation": "EAT",
      //   "dst_offset": 0,
      //   "dst_from": null,
      //   "dst_until": null,
      //   "client_ip": "100.100.100.0",
      // };

      http.Response response = await http.get(
        url,
        headers: {
          // 'User-Agent': 'Mozilla/5.0 (compatible; Flutter/1.0)',
          'Accept': 'application/json',
        },
      );

      // if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      // print(data);
      // Map data = response;
      String datetime = data['dateTime'];
      // String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);
      // Use RegExp to truncate microseconds to milliseconds
      // final regex = RegExp(r'(\.\d{3})\d*');
      // final datetime = datetimeOg.replaceFirstMapped(
      //   regex,
      //   (match) => match.group(1)!,
      // );
      DateTime now = DateTime.parse(datetime);
      // print(now);
      // now = now.add(Duration(hours: int.parse(offset)));
      // print(now);
      // time = now.toString();
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      // } else {
      //   print('Error: ${response.statusCode}');
      // }
    } catch (e) {
      // print('caught error $e');
      time = 'Could not get time';
    }
  }
}
