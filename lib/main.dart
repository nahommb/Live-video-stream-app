import 'package:flutter/material.dart';
import 'package:video_stream_app/live_screen.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String liveID = 'live';
bool isHost = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Live Video Stream App'),),
        body: Column(
          children: [

            TextField(
              onChanged: (val){
                liveID = val;
              },
              decoration: InputDecoration(labelText: 'Stream id'),

            ),
            Switch(value: isHost, onChanged: (val){
              setState(() {
                isHost = val;
              });

            }),
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LiveScreen(liveID: liveID.toString(), isHost: isHost)));
            },child: Text('join'),),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
