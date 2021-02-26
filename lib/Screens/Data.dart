import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Data extends GetxController{
  Future getData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot = 
    await firebaseFirestore.collection(collection).get();
    return snapshot.docs;
  }

  Future queryData(String queryString) async{
    return FirebaseFirestore.instance.collection('university').where(
      'name',isGreaterThanOrEqualTo: queryString
    ).get();
  }
}

// class College {
//   String name;
//   String state;
//   String city;
//   String location;
//   String logo;
//   String views;
//   College.fromMap(Map<String,dynamic> data){
//     name=data['name'];
//     state=data['state'];
//     city=data['city'];
//     location=data['location'];
//     logo=data['logo'];
//     views=data['views'];
//   }
// }