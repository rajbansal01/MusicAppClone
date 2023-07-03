import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:music_app/screens/home_screen.dart';
import 'package:music_app/screens/library.dart';
import 'package:music_app/screens/search_screen.dart';

import '../model/music.dart';
import 'home.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {

  AudioPlayer _audioPlayer = new AudioPlayer();
  Music? music;
  bool isPlaying = false;

  Widget miniPlayer(Music?  music,{bool stop = false}){
    this.music = music;

    if(music == null){
      return SizedBox();
    }
    if(stop){
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {

    });
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color: Colors.blueGrey,
    width: deviceSize.width,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          music.imageUrl,
             fit: BoxFit.cover),
        Text(music.name, style: TextStyle(color: Colors.white),),
        IconButton(onPressed: ()async {
          await _audioPlayer.play(music.audioUrl);
        },
            icon: isPlaying?
            Icon(Icons.pause, color: Colors.white,)
          : Icon(Icons.play_arrow, color: Colors.white,))
      ],
    ),);
  }
  var Tabs = [];

  // static   List<Widget>_widgetOptions = <Widget>[
  //   const homeScreen(),
  //   const searchScreen(),
  //   const libraryScreen(),
  // ];
  int selectedTabIndex = 0;

  // void _onItemTapped(int index){
  //   setState(() {
  //     selectedIndex= index;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [home(miniPlayer), searchScreen(), libraryScreen()];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Tabs[selectedTabIndex],
        // child: _widgetOptions[selectedIndex],

        bottomNavigationBar: Column(
           mainAxisSize: MainAxisSize.min,
          children: [
            miniPlayer(music),
            BottomNavigationBar(
            backgroundColor: Colors.black,
            // currentIndex: selectedIndex,
              currentIndex : selectedTabIndex,
            onTap: (currentIndex){
              selectedTabIndex = currentIndex;
              setState(() {

              });
            },
            type: BottomNavigationBarType.fixed,
            elevation : 10,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items : const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home_filled),
              label : 'home', ),
              BottomNavigationBarItem(icon: Icon(Icons.search), activeIcon: Icon(Icons.saved_search_outlined), label : 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), activeIcon: Icon(Icons.library_music), label : 'library'),
              // BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), activeIcon: Icon(Icons.person), label : 'profile'),
            ],

          ),
        ]),
    );
  }
}
