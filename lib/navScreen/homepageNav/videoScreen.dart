import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class videoScreen extends StatelessWidget {
  const videoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: videoscreen()
    );
  }
}
class videoscreen extends StatefulWidget {
  const videoscreen({Key? key}) : super(key: key);

  @override
  _videoscreenState createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {

  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff1a1919),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1919),
        elevation: 0,
        leading:  IconButton(

            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              _controller!.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: VideoPlayer(_controller!),
              )
                  : Container(),
              VideoProgressIndicator(_controller!, allowScrubbing: true,
                padding: EdgeInsets.all(0.0),
                colors: VideoProgressColors(
                  backgroundColor:  Colors.blueGrey,
                  playedColor: Color(0xffFFBB3B),
                  bufferedColor: Colors.grey
                )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous), color:Colors.white),

                  IconButton(onPressed: (){
                    setState(() {
                      _controller!.value.isPlaying
                          ? _controller!.pause()
                          : _controller!.play();
                    });

                  }, icon: Icon( _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,), color:Colors.white),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next), color:Colors.white),
                ],
              ),

            ],
          )
        ],
      ),

    );
  }
}
