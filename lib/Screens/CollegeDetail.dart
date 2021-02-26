import 'package:flutter/material.dart';
import 'Colleges.dart';
import 'CollegeData.dart';
import 'Components/appbar.dart';
class CollegeDetail extends StatelessWidget {
  final College college;
  List<String> collegeRequirements = getCollegesRequiremnts();

  CollegeDetail({@required this.college});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: Appbar(context),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration:BoxDecoration(
                    image:DecorationImage(
                      image:AssetImage("assets/images/pic1.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 32,
              ),

              Center(
                child: Text(
                  "Byeeeee",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Center(
                child: Text(
                  "okkkk",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),

              SizedBox(
                height: 31,
              ),

              Row(children: [

                Expanded(child: Container(
                  height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),

                ),
                child: Center(
                  child: Text(
                    "Okkkkkzz",
                    style:TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  ),
                ),
                ),
              ],
              ),

              SizedBox(
                height: 30,
              ),

              Text(
                "Requirements",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Expanded(child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: buildRequirements(),
                ),
              ),
              ),

              SizedBox(
                height: 16,
              ),

              Row(children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 28,

                  ),
                  ),
                ),

                SizedBox(
                width:16,
              ),

              Expanded(child: Container(height: 60,
              decoration: BoxDecoration(color: Colors.red[500],
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              ),
              child: Center(child: Text(
                "Apply Now",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ),
              ),
              ),
              
              ],
              ),

            ],
          )
        )
      )
      
    );
  }

  List<Widget> buildRequirements(){
    List<Widget> list = [];
    for(var i=0; i< collegeRequirements.length;i++){
      list.add(buildRequirement(collegeRequirements[i]));
    }
    return list;
  }

  Widget buildRequirement(String requirement) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(color: Colors.grey,
          shape: BoxShape.circle,
          ),
        ),

        SizedBox(
          width: 16,
        ),

        Flexible(child: Text(
          requirement,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        ),
      ],
      ),
    );
  }
}