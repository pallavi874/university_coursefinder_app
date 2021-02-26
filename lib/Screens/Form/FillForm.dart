import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FillForm extends StatefulWidget {
  @override
  _FillFormState createState() => _FillFormState();
}

class _FillFormState extends State<FillForm> {
  TextEditingController _nameController, _numberController, _clgnameController, _mnameController,
      _cnameController, _dobController, _qualificationController, _fnameController, _tenmController, _twelmController;
  String _typeSelected ='';

  DatabaseReference _ref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _numberController = TextEditingController();
    _dobController= TextEditingController();
    _qualificationController= TextEditingController();
    _fnameController= TextEditingController();
    _mnameController= TextEditingController();
    _tenmController= TextEditingController();
    _twelmController= TextEditingController();
    _clgnameController= TextEditingController();
    _cnameController= TextEditingController();

    _ref = FirebaseDatabase.instance.reference().child('Forms');
  }


  Widget _buildContactType(String title){

    return InkWell(

      child: Container(
        height: 40,
        width: 90,

        decoration: BoxDecoration(
          color: _typeSelected == title? Colors.green : Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Center(child: Text(title, style: TextStyle(fontSize: 18,
            color: Colors.white),
        ),),),

      onTap: (){
        setState(() {
          _typeSelected = title;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Fill Up'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                // prefixIcon: Icon(
                //   Icons.account_circle,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            // SizedBox(height: 15),
            TextFormField(
              controller: _numberController,
              decoration: InputDecoration(
                hintText: 'Enter Number',
                // prefixIcon: Icon(
                //   Icons.phone_iphone,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _dobController,
              decoration: InputDecoration(
                hintText: 'Date of Birth',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _qualificationController,
              decoration: InputDecoration(
                hintText: 'Qualification',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _fnameController,
              decoration: InputDecoration(
                hintText: 'Fathers Name',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _mnameController,
              decoration: InputDecoration(
                hintText: 'Mother Name',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _tenmController,
              decoration: InputDecoration(
                hintText: '10th Marks',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _twelmController,
              decoration: InputDecoration(
                hintText: '12th Marks',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _clgnameController,
              decoration: InputDecoration(
                hintText: 'Enter College Name for Admission',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            TextFormField(
              controller: _cnameController,
              decoration: InputDecoration(
                hintText: 'Enter Course for Admission',
                // prefixIcon: Icon(
                //   Icons.st,
                //   size: 30,
                // ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),

            SizedBox(height: 15,),
            // Container(
            //   height: 40,
            //   child: ListView(
            //
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       _buildContactType('Student'),
            //       SizedBox(width: 10),
            //
            //       _buildContactType(''),
            //       SizedBox(width: 10),
            //       _buildContactType('Friends'),
            //       SizedBox(width: 10),
            //       _buildContactType('Others'),
            //     ],
            //   ),
            // ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: RaisedButton(child: Text('Save',style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,

              ),),
                onPressed: (){
                  saveForm();
                },

                color: Theme.of(context).primaryColor,
              ),
            )

          ],
        ),
      ),
    );
  }
  void saveForm(){

    String name = _nameController.text;
    String number = _numberController.text;
    String DOB = _dobController.text;
    String qualification = _qualificationController.text;
    String Father_name = _fnameController.text;
    String Mother_name = _mnameController.text;
    String tenthNo = _tenmController.text;
    String twelthhNo = _twelmController.text;
    String collegename = _clgnameController.text;
    String coursename = _cnameController.text;

    Map<String,String> form = {
      'name':name,
      'number': '+91 ' + number,
      'DOB':DOB,
      'qualification':qualification,
      'father name':Father_name,
      'mother name':Mother_name,
      'tenthno':tenthNo,
      'twelthno':twelthhNo,
      'collegename':collegename,
      'coursename':coursename,
      // 'type': _typeSelected,
    };

    _ref.push().set(form).then((value) {
      Navigator.pop(context);
    });


  }
}