import 'package:flutter/material.dart';
import 'package:video_stream_app/constants.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveScreen extends StatefulWidget {

  final String liveID;
  final bool isHost;

  LiveScreen({required this.liveID,required this.isHost});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ZegoUIKitPrebuiltLiveStreaming(
          appID: appID,
          appSign: appSign,
          config: widget.isHost
              ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
              : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
          liveID: widget.liveID,
          userID: '123456',
          userName: 'Leej',

        )
    );
  }
}
