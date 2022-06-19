import 'package:flutter/material.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerDoctorStrange extends StatefulWidget {
  const TrailerDoctorStrange({Key? key}) : super(key: key);

  @override
  State<TrailerDoctorStrange> createState() => _TrailerDoctorStrangeState();
}

class _TrailerDoctorStrangeState extends State<TrailerDoctorStrange> {
 late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'aWzlQ2N6qqg',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
                
              ),
              
            ],
          )
        ],
      ),
    );
 
  }
}

class TrailerGatotKaca extends StatefulWidget {
  const TrailerGatotKaca({Key? key}) : super(key: key);

  @override
  State<TrailerGatotKaca> createState() => _TrailerGatotKacaState();
}

class _TrailerGatotKacaState extends State<TrailerGatotKaca> {
 late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'R7SjBDyaWJk',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerJurrasicWorld extends StatefulWidget {
  const TrailerJurrasicWorld({Key? key}) : super(key: key);

  @override
  State<TrailerJurrasicWorld> createState() => _TrailerJurrasicWorldState();
}

class _TrailerJurrasicWorldState extends State<TrailerJurrasicWorld> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'fb5ELWi-ekk',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerCintaSubuh extends StatefulWidget {
  const TrailerCintaSubuh({Key? key}) : super(key: key);

  @override
  State<TrailerCintaSubuh> createState() => _TrailerCintaSubuhState();
}

class _TrailerCintaSubuhState extends State<TrailerCintaSubuh> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'DD79b9xhvkI',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerTopGun extends StatefulWidget {
  const TrailerTopGun({Key? key}) : super(key: key);

  @override
  State<TrailerTopGun> createState() => _TrailerTopGunState();
}

class _TrailerTopGunState extends State<TrailerTopGun> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'giXco2jaZ_4',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerSrimulat extends StatefulWidget {
  const TrailerSrimulat({Key? key}) : super(key: key);

  @override
  State<TrailerSrimulat> createState() => _TrailerSrimulatState();
}

class _TrailerSrimulatState extends State<TrailerSrimulat> {
 late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: '-R-tSLyy-uI',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerDoraemon extends StatefulWidget {
  const TrailerDoraemon({Key? key}) : super(key: key);

  @override
  State<TrailerDoraemon> createState() => _TrailerDoraemonState();
}

class _TrailerDoraemonState extends State<TrailerDoraemon> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'XDll2-KHieA',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerTheDoll3 extends StatefulWidget {
  const TrailerTheDoll3({Key? key}) : super(key: key);

  @override
  State<TrailerTheDoll3> createState() => _TrailerTheDoll3State();
}

class _TrailerTheDoll3State extends State<TrailerTheDoll3> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'l3RiBklg6ss',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerTheRoundup extends StatefulWidget {
  const TrailerTheRoundup({Key? key}) : super(key: key);

  @override
  State<TrailerTheRoundup> createState() => _TrailerTheRoundupState();
}

class _TrailerTheRoundupState extends State<TrailerTheRoundup> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'SSdyOllZFTU',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerNgeri extends StatefulWidget {
  const TrailerNgeri({Key? key}) : super(key: key);

  @override
  State<TrailerNgeri> createState() => _TrailerNgeriState();
}

class _TrailerNgeriState extends State<TrailerNgeri> {
 late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'i2yeRM9jcqc',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerMemory extends StatefulWidget {
  const TrailerMemory({Key? key}) : super(key: key);

  @override
  State<TrailerMemory> createState() => _TrailerMemoryState();
}

class _TrailerMemoryState extends State<TrailerMemory> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: '6OS_LxM6y7o',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerKkn extends StatefulWidget {
  const TrailerKkn({Key? key}) : super(key: key);

  @override
  State<TrailerKkn> createState() => _TrailerKknState();
}

class _TrailerKknState extends State<TrailerKkn> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'jtDRXPTZT-M',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerBullet extends StatefulWidget {
  const TrailerBullet({Key? key}) : super(key: key);

  @override
  State<TrailerBullet> createState() => _TrailerBulletState();
}

class _TrailerBulletState extends State<TrailerBullet> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: '0IOsk2Vlc4o',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerLightyear extends StatefulWidget {
  const TrailerLightyear({Key? key}) : super(key: key);

  @override
  State<TrailerLightyear> createState() => _TrailerLightyearState();
}

class _TrailerLightyearState extends State<TrailerLightyear> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'BwZs3H_UN3k',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerMinion extends StatefulWidget {
  const TrailerMinion({Key? key}) : super(key: key);

  @override
  State<TrailerMinion> createState() => _TrailerMinionState();
}

class _TrailerMinionState extends State<TrailerMinion> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: '6DxjJzmYsXo',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerMySassy extends StatefulWidget {
  const TrailerMySassy({Key? key}) : super(key: key);

  @override
  State<TrailerMySassy> createState() => _TrailerMySassyState();
}

class _TrailerMySassyState extends State<TrailerMySassy> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'IEm0t4YW0Xw',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerNope extends StatefulWidget {
  const TrailerNope({Key? key}) : super(key: key);

  @override
  State<TrailerNope> createState() => _TrailerNopeState();
}

class _TrailerNopeState extends State<TrailerNope> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'In8fuzj3gck',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerPaws extends StatefulWidget {
  const TrailerPaws({Key? key}) : super(key: key);

  @override
  State<TrailerPaws> createState() => _TrailerPawsState();
}

class _TrailerPawsState extends State<TrailerPaws> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'A_hkjvjx2ek',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerThor extends StatefulWidget {
  const TrailerThor({Key? key}) : super(key: key);

  @override
  State<TrailerThor> createState() => _TrailerThorState();
}

class _TrailerThorState extends State<TrailerThor> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'Go8nTmfrQd8',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrailerSee extends StatefulWidget {
  const TrailerSee({Key? key}) : super(key: key);

  @override
  State<TrailerSee> createState() => _TrailerSeeState();
}

class _TrailerSeeState extends State<TrailerSee> {
  late YoutubePlayerController ytcontroller;
  
  @override
  void initState() {
    ytcontroller = YoutubePlayerController(
      initialVideoId: 'JkKHqbl54MA',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      )
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytcontroller,
                showVideoProgressIndicator: true,
                aspectRatio: 21/9.54,
              ),
            ],
          )
        ],
      ),
    );
  }
}
