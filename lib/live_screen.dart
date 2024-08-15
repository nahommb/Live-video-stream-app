import 'dart:math';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:video_stream_app/constants.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveScreen extends StatefulWidget {
  final String liveID;
  final bool isHost;

  //LiveScreen({required this.liveID, required this.isHost});
  const LiveScreen({Key? key, required this.liveID, this.isHost = false}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  late String userID;
  late String userName;

  @override
  void initState() {
    super.initState();
    final uuid = Uuid();
    userID = uuid.v4(); // You could replace this with a stored value if you want persistence
    userName = 'user_name_' + Random().nextInt(100).toString();
  }





  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: appID,
        appSign: appSign,
        userID: '93029',
        userName: 'abebe',
        liveID:'909o',
        config: widget.isHost
          ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
          : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
        controller: ZegoUIKitPrebuiltLiveStreamingController(),
      ),
    );
  }
}
