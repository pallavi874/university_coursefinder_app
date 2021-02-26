import 'package:flutter/material.dart';

class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem("Colleges"),
    NavigationItem("Application"),
  ];
}

class College {
  String name;
  String state;
  String city;
  String location;
  String logo;
  String views;

  College(this.name,this.state,this.city,this.location,this.logo,this.views);
}

List<College> getCollege(){
  return <College>[
    College("Trident Academy of Technology","Bhubaneshwar","Infocity","40","assets/images/pic1.png","xyz"),
    College("Trident Academy of Technology","Bhubaneshwar","Infocity","4","assets/images/pic1.png","xyz"),
    College("Trident Academy of Technology","Bhubaneshwar","Infocity","4","assets/images/pic1.png","xyz"),
    College("Trident Academy of Technology","Bhubaneshwar","Infocity","4","assets/images/pic1.png","xyz"),
    College("Trident Academy of Technology","Bhubaneshwar","Infocity","4","assets/images/pic1.png","xyz"),




  ];
}
class CollegesRequirements {
  String data;

  CollegesRequirements(this.data);

}

List<String> getCollegesRequiremnts(){
  return <String>[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  ];

}