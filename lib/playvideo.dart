import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
  final String nrout;

  const PlayVideo({Key key,
    this.nrout
  }) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  VideoPlayerController controller;
  final asset = 'assets/growth.mp4';

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset(asset)
    ..addListener(() {setState(() {
    }); })
    ..setLooping(true)
    ..initialize().then((value) => controller.play());
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;

    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            VideoPlayerWidget(controller: controller),
            const SizedBox(height: 32,),
            if (controller != null && controller.value.initialized)
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.amber,
                child: IconButton(
                  icon: Icon(
                    isMuted ? Icons.volume_mute : Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: () => controller.setVolume(isMuted ? 1 : 0),
                ),
              )
          ],

        ),
      ),
    );
  }
}



class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({Key key,
    @required this.controller,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value.initialized
        ? Container(alignment: Alignment.topCenter, child: buildVideo())
        : Container(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );

  }

  Widget buildVideo() => Stack(
    children: [
      buildVideoPlayer(),
      Positioned.fill(child: BasicOverlayWidget(controller: controller))
    ],
  );

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
  );
}


class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const BasicOverlayWidget({Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => controller.value.isPlaying ? controller.pause() :controller.play(),
      child: Stack(
        children: [
          buildPlay(),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => VideoProgressIndicator(
      controller,
    allowScrubbing: true,
    colors: VideoProgressColors(playedColor: Colors.amber),
  );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
        alignment: Alignment.center,
        color: Colors.black26,
        child: Icon(
          Icons.play_arrow, color: Colors.amber, size: 80,)
      );
}
