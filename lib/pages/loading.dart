import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response response =
  //       await get('https://jsonplaceholder.typicode.com/todos/1');
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);
  // }
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: (Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      )),
    );
  }
}

// //async
// void getData() async {
//   //simulate network request for a username
//   String user = await Future.delayed(Duration(seconds: 3), () {
//     return 'dheeru';
//   });
//   //simulatenetworkrequest to get bio of username
//   String bio = await Future.delayed(Duration(seconds: 2), () {
//     return 'simplicity is the main';
//   });
//   print("ok cool");
//   print('$user - $bio');
//   // await Future.delayed(Duration(seconds: 3), () {
//   //   print("dheeru");
//   // });
// }
//simulate network request for a username
// String user = await Future.delayed(Duration(seconds: 3), () {
//   return 'dheeru';
// });
// //simulatenetworkrequest to get bio of username
// String bio = await Future.delayed(Duration(seconds: 2), () {
//   return 'simplicity is the main';
// });
// print("ok cool");
// print('$user - $bio');
