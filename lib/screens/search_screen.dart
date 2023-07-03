import 'package:flutter/material.dart';

import '../model/categor.dart';
import '../model/category.dart';
import '../services/categor_operation.dart';
import '../services/category_operation.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {

  var arrColors = [
  Colors.red,
  Colors.orange,
  Colors.greenAccent,
  Colors.blue,
  Colors.deepPurple,
  Colors.yellow,
  Colors.lightBlueAccent,
  Colors.orange,
    Colors.greenAccent,
    Colors.blue,
    Colors.deepPurple,
    Colors.yellow,
  ];


  Widget createCategor(Categor categor){
    return Container(
      // color : Colors.blueGrey.shade300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(6,10,0,10),
            child: Container(
                width: double.infinity,
                // height:MediaQuery.of(context).size.height/1.2,
                child: Text(categor.name , style: TextStyle(fontWeight:FontWeight.w600,fontSize:17,color: Colors.white),)),
          ),
          Container(
            width:double.infinity,
              height:60,
              // height: MediaQuery.of(context).size.height/1.2,
      child: Image.network(categor.imageUrl , )),
          // Padding(
          //   padding: const EdgeInsets.all(18.0),
          //   child: Container(
          //     width: double.infinity,
          //       // height:MediaQuery.of(context).size.height/1.2,
          //       child: Text(categor.name , style: TextStyle(fontWeight:FontWeight.w600,fontSize:17,color: Colors.white),)),
          // )
        ],
      ),
    );
  }

  List createListOfCategories(){
    List<Categor> categorList = CategorOperations.getCategorie(); //receive data
    List<Widget> categories =  categorList.map((Categor categor) => createCategor(categor)).toList();
    return categories; // convert data to widget using map function
  }

  Widget createGrid(context,data){
    print(data);
    print(createListOfCategories());
    return Container(
      height: 520,
      child: GridView.builder(itemCount: arrColors.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,crossAxisSpacing: 14, mainAxisSpacing: 14, childAspectRatio: 3/2,  ),
        itemBuilder: (ctx, int index) {
          return

          Container(
            child: data[index],
            decoration: BoxDecoration(
              color : arrColors[index],
              borderRadius: BorderRadius.circular(14),

            ),


          );

      },
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
         child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(

            padding: EdgeInsets.only(left:18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Search',textAlign: TextAlign.start ,style: TextStyle(color: Colors.white, fontSize: 34),
            ),
                SizedBox(height: 10),
                TextField(

                  decoration: InputDecoration(
                    hintText: 'What do you want to listen to?',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16),
                    // suffixStyle: Colors.black,
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),

                  )),
                ),
                SizedBox(height: 15,),
                Container(
                  height: MediaQuery.of(context).size.height/1.6,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Browse all',style: TextStyle(color: Colors.white, fontSize: 28)),
                        SizedBox(height: 15,),
                        createGrid(context,createListOfCategories()),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
       )
    ;
  }
}
