import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video/screen/home/provider/homeprovider.dart';
import 'package:video_player/video_player.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;
  VideoPlayerController? videoPlayerController;

  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")..initialize().then((value) => setState((){}));
  }

  Widget build(BuildContext context) {
    homeprovidertrue = Provider.of<Homeprovider>(context,listen: true);
    homeproviderfalse = Provider.of<Homeprovider>(context,listen: false);

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Center(
        child: Container(
          height: 250,
          alignment: Alignment.center,
          child: InkWell(onTap: (){
            homeproviderfalse!.Player();
            if(homeproviderfalse!.isPlay)
              {
                videoPlayerController!.play();
              }
            else
              {
                videoPlayerController!.pause();
              }
          },child: VideoPlayer(videoPlayerController!)),
        ),
      )
    ));
  }
}
