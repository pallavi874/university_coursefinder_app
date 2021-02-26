import 'package:flutter/material.dart';

class NavigationItems {
  String title;

  NavigationItems(this.title);
}
List<NavigationItems> getNavigationItemsList(){
  return <NavigationItems>[
    NavigationItems("Courses"),
    NavigationItems("Application"),
  ];
}

class Course{
  String name;
  String branch;
  String duration;
  String eligibility;
  String admission;
  String jobs;

  Course(this.name, this.branch,this.duration,this.eligibility,this.admission, this.jobs);
}
List<Course> getCourse(){
  return <Course>[
    Course('B.Tech' , 'CSE', "4Years", "After 12th", "JEE Main", "Developer"),
    Course('B.Tech' , 'CSE', "4Years", "After 12th", "JEE Main", "Developer"),
    Course('B.Tech' , 'CSE', "4Years", "After 12th", "JEE Main", "Developer"),
    Course('B.Tech' , 'CSE', "4Years", "After 12th", "JEE Main", "Developer"),
    Course('B.Tech' , 'CSE', "4Years", "After 12th", "JEE Main", "Developer"),
  ];
}
class CoursesRequirements {
  String data;
  CoursesRequirements(this.data);
}
List<String> getCoursesRequirements(){
  return <String>[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  ];
}