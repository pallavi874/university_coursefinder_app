import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() => runApp(new MediaQuery(
//   data: new MediaQueryData(), 
//   child: new MaterialApp(
//     home:new DataConnect())));
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DataConnect());
}

class DataConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// CollectionReference university = FirebaseFirestore.instance.collection('university');    
return Scaffold(
  appBar: AppBar(
        title: Text('College Profile'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('university').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(!snapshot.hasData){
            return CircularProgressIndicator();
          }


          return ListView(
            children: snapshot.data.docs.map((document){
            
            return Column(
              children: <Widget>[
                
                Text(document["name"]),
                Text(document["state"]),
                Text(document["city"]),
                Text(document["location"]),
                
                SizedBox(height: 40,)

              ],
            );
          }).toList(),
          );
        }
      ),
  
);
  
  }
}
// class DataConnect extends StatefulWidget {
//   @override
//   _DataConnectState createState() => _DataConnectState();
// }

// class _DataConnectState extends State<DataConnect> {

//   @override
//   Widget build(BuildContext context) {
//     CollectionReference university = FirebaseFirestore.instance.collection('university');

//     return StreamBuilder<QuerySnapshot>(
//       stream: university.snapshots(),
//       builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
//         if(snapshot.hasError) {
//           return Text('Something went wrong');
//         }

//         if(snapshot.connectionState == ConnectionState.waiting) {
//           return Text("Loading...");
//         }

//         return new ListView(
//           children: snapshot.data.docs.map((DocumentSnapshot document) {
//             return new ListTile(
//               title: new Text(document.data()['name']),
//               subtitle: new Text(document.data()['state'])
//             );
//           }).toList(),
//         );
//       },
      
//     );
//   }
// }