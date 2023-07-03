import 'package:flutter/material.dart';

class libraryScreen extends StatefulWidget {
  const libraryScreen({Key? key}) : super(key: key);

  @override
  State<libraryScreen> createState() => _libraryScreenState();
}

class _libraryScreenState extends State<libraryScreen> {
  var initialItem = 'Recent';
  List<String> myItems = [
    'Recent', 'Recently added', 'Alphabetically','Creator'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                centerTitle: false,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.black,
                elevation: 0,
                leadingWidth: 0,
                title:
                Row(
                  children: [
                    Image(image: AssetImage('images/music.png',),height: 40,width:40,),
                    SizedBox(width:15),
                    Text('Your Library' ,style: TextStyle(color: Colors.white, fontSize: 30)),
                    SizedBox(width:100),
                    Icon(Icons.search),
                    // Icon(Icons.add)
                  ],
                ),
                // actions: [Icon(Icons.search),Icon(Icons.add),],
              ),
              Container(
                child: DropdownButton(
                  elevation: 0,
                  icon: Icon(Icons.thumbs_up_down),
                  dropdownColor: Colors.black,
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    initialItem = value!;
                    setState(() {

                    });
                  },
                  value: initialItem,
                   items: myItems.map((items){
                     return DropdownMenuItem(value : items, child: Text(items));
                   }).toList(),
                ),
              ),
              SizedBox(height:15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),color: Colors.blue,
                    ),

                    child: IconButton(onPressed: () {  }, icon: Icon(Icons.add,size: 26,),
                        )
                  ),
                  SizedBox(width:20),
                  Text('Add New Playlists', style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),color: Colors.blue,
                  ),

                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.heart_broken,size: 26,),
                      )
                  ),SizedBox(width:20),
                  Text('Your Liked Songs', style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
