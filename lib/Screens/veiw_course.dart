import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ViewCourse());
}



class ViewCourse extends StatelessWidget {
  // final alreadySaved = _saved.contains(pair);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
        backgroundColor:Colors.white,
        // actions: [
        //   IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        // ],
      ),
      body: StreamBuilder(
          stream:
          FirebaseFirestore.instance.collection('course').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return ListView(
              children: snapshot.data.docs.map((document) {
                return GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context).pop();
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => Sea(),
                  //       ));
                  // },
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 60,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/pic1.png'),
                                          fit: BoxFit.fitWidth,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      )),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      child: Text(
                                        "views",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          // Row(children: [
                          //   InkWell(
                          //     child: Container(
                          //       height: 60,
                          //       width: 60,
                                // child: Center(
                                //   child:
                              //       Icon(
                              //       Icons.favorite_border,
                              //       size: 28,
                              //     ),
                              //   ),
                              // ),
                              // onTap: () {
                              //   Icons.favorite,
                              //   colo
                              //
                              // },
                //
                //             ),
                // ],

                            SizedBox(
                              width:16,
                            ),


                            Expanded(
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        document["city"],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        document["state"],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        document["name"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                            // padding:EdgeInsets.symmetric(horizontal:12,vertical:8,),
                            // child: Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   children: [
                            //     Text(document["name"],
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 15,
                            //       fontWeight: FontWeight.bold,
                            //     ),),
                            //     SizedBox(width:10,),

                            //     Text(document["state"],
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 15,
                            //       fontWeight: FontWeight.bold,
                            //     ),),
                            //     SizedBox(width:10,),

                            //   ],

                            // )
                          )),

                      // Text(document["state"]),
                      // Text(document["city"]),
                      // Text(document["location"]),

                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                );
              }).toList(),
            );
          }),
    );
  }
}
void bookmark(){

}
