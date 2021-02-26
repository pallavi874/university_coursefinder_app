import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:university_coursefinder_app/Screens/Form/FillForm.dart';


import '../../constants.dart';
class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  Query _ref;
  DatabaseReference reference =
  FirebaseDatabase.instance.reference().child('Forms');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ref = FirebaseDatabase.instance
        .reference()
        .child('Forms')
        .orderByChild('Name');
  }

  Widget _buildFormsItems({Map form}) {
    // Color typeColor = getTypeColor(form['type']);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      height: 130,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: Theme
                    .of(context)
                    .primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                form['Name'],
                style: TextStyle(
                    fontSize: 16,
                    color: Theme
                        .of(context)
                        .primaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.phone_iphone,
                color: Theme
                    .of(context)
                    .accentColor,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                form['Number'],
                style: TextStyle(
                    fontSize: 16,
                    color: Theme
                        .of(context)
                        .accentColor,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 15),
              Icon(
                Icons.mail_outline,
                // color: typeColor,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                form['type'],
                style: TextStyle(
                    fontSize: 16,
                    // color: typeColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //     GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (_) => EditForm(
          //                   contactKey: form['key'],
          //                 )));
          //       },
          //       child: Row(
          //         children: [
          //           Icon(
          //             Icons.edit,
          //             color: Theme.of(context).primaryColor,
          //           ),
          //           SizedBox(
          //             width: 6,
          //           ),
          //           Text('Edit',
          //               style: TextStyle(
          //                   fontSize: 16,
          //                   color: Theme.of(context).primaryColor,
          //                   fontWeight: FontWeight.w600)),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),//   children: [

          //     GestureDetector(
          //       onTap: () {
          //         _showDeleteDialog(form: form);
          //       },
          //       child: Row(
          //         children: [
          //           Icon(
          //             Icons.delete,
          //             color: Colors.red[700],
          //           ),
          //           SizedBox(
          //             width: 6,
          //           ),
          //           Text('Delete',
          //               style: TextStyle(
          //                   fontSize: 16,
          //                   color: Colors.red[700],
          //                   fontWeight: FontWeight.w600)),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }

  // _showDeleteDialog({Map contact}) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Delete ${contact['name']}'),
  //           content: Text('Are you sure you want to delete?'),
  //           actions: [
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('Cancel')),
  //             FlatButton(
  //                 onPressed: () {
  //                   reference
  //                       .child(contact['key'])
  //                       .remove()
  //                       .whenComplete(() => Navigator.pop(context));
  //                 },
  //                 child: Text('Delete'))
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Your Form'),
      ),
      body: Container(
        height: double.infinity,
        //   child: FirebaseAnimatedList(
        //     query: _ref,
        //     itemBuilder: (BuildContext context, DataSnapshot snapshot,
        //         Animation<double> animation, int index) {
        //       Map contact = snapshot.value;
        //       contact['key'] = snapshot.key;
        //       return _buildFormItem(form: form);
        //     },
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (_) {
        //         return AddForms();
        //       }),
      ),
    );
    //     child: Icon(Icons.add, color: Colors.white),
    //   ),
    // );
  }


// Color getTypeColor(String type) {
//   Color color = Theme.of(context).accentColor;
//
//   if (type == 'Work') {
//     color = Colors.brown;
//   }
//
//   if (type == 'Family') {
//     color = Colors.green;
//   }
//
//   if (type == 'Friends') {
//     color = Colors.teal;
//   }
//   return color;

// class MyHomePage extends StatefulWidget {
//   TextEditingController sampledata1 = new TextEditingController();
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(
//           vertical: 50.0,
//           horizontal: 10.0,
//         ),
//         child: _buildForm(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (_formKey.currentState.validate()) {
//             debugPrint('All validations passed!!!');
//           }
//         },
//         child: Icon(Icons.done),
//       ),
//     );
//   }
//
//   Form _buildForm() {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 return null;
//               },
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 return null;
//               },
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Current School/College Name',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 return null;
//               },
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Date of Birth',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 return null;
//               },
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Email Id',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 return null;
//               },
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Mobile',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (String value) {
//                 if (value.isEmpty) {
//                   return 'Username cannot be empty';
//                 } else if (value.length < 3) {
//                   return 'Username must be at least 3 characters long.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//               controller: _passwordController,
//               validator: (String value) {
//                 if (value.isEmpty) {
//                   return 'Password cannot be empty';
//                 } else if (value.length < 6) {
//                   return 'Password must be at least 6 characters long.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//               controller: _confirmPasswordController,
//               validator: (String value) {
//                 if (value != _passwordController.value.text) {
//                   return 'Passwords do not match!';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
}
