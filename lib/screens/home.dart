import 'package:flutter/material.dart';

import '../model/category.dart';
import '../model/music.dart';
import '../services/category_operation.dart';
import '../services/music_operations.dart';

class home extends StatelessWidget {
  // const home({Key? key}) : super(key: key);


  Function _miniPlayer;
  home(this._miniPlayer);


  Widget createCategory(Category category){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color : Colors.grey.shade900,
      ),

      child: Row(
        children: [
          Image.network(category.imageUrl , fit: BoxFit.cover,),
          SizedBox(width:8),
          Text(category.name ,textAlign: TextAlign.center, style: TextStyle( fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),)
        ],
      ),
    );
  }
  List<Widget> createListOfCategories(){
    List<Category> categoryList = CategoryOperations.getCategories(); //receive data
    List<Widget> categories =  categoryList.map((Category category) => createCategory(category)).toList();
    return categories; // convert data to widget using map function
  }
  Widget createGrid(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/3.8,
      child: GridView.count(

        childAspectRatio: 8/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children : createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget createMusic(Music music){
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        height: 150,
        width: 150,
        child: Column(
          children: [
            InkWell( onTap: (){
              _miniPlayer(music, stop : true);
            },
                child: Image.network(music.imageUrl, fit: BoxFit.cover,)),
            Text(music.name, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            Text(music.desc, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)
          ],
        ),
      ),
    );
  }
  Widget createMusicList(BuildContext context){
    List<Music> musicList = MusicOperations.getMusic();
    return Container(
      height: MediaQuery.of(context).size.height/2.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){
          return createMusic(musicList[index]);
        },
        itemCount: musicList.length,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: MediaQuery.of(context).size.height/1.2,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                  height: MediaQuery.of(context).size.height/1.2,
                  child: SingleChildScrollView(
                      child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text('Good Morning', style: TextStyle(color: Colors.white, fontSize: 34),),
                              InkWell(
                                onTap: (){},
                                child: const Icon(Icons.settings,color: Colors.white,),
                              )

                            ],
                          ),
                           SizedBox(height: 15,),
                          createGrid(context),
                           SizedBox(height: 16,),
                           Text('Made For You',textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
                           SizedBox(height: 15,),
                          createMusicList(context),
                          SizedBox(height: 16,),
                           Text('Music For You',textAlign: TextAlign.start, style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
                           SizedBox(height: 15,),
                          createMusicList(context)

                        ],
                      ),
                    ),
                  ),
             // Column(
             //   crossAxisAlignment: CrossAxisAlignment.start,
             //   children: [
             //     Row(
             //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //       children: [
             //          Text('Good Morning', style: TextStyle(color: Colors.white, fontSize: 34),),
             //         InkWell(
             //           onTap: (){},
             //           child: const Icon(Icons.settings,color: Colors.white,),
             //         )
             //
             //       ],
             //     ),
             //      SizedBox(height: 15,),
             //     createGrid(),
             //      SizedBox(height: 16,),
             //      Text('Made For You',textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
             //      SizedBox(height: 15,),
             //     createMusicList(context),
             //     SizedBox(height: 16,),
             //      Text('Music For You',textAlign: TextAlign.start, style:
             //     TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
             //      SizedBox(height: 15,),
             //     createMusicList(context)
             //
             //   ],
             // ),
          ),
        ),
      ));
  }
}
