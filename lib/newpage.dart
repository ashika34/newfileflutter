// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class newpage extends StatefulWidget {
//   const newpage({Key? key}) : super(key: key);

//   @override
//   State<newpage> createState() => _newpageState();
// }

// class _newpageState extends State<newpage> {
//   Future<dynamic>? _data; // Future to hold the data

//   // Function to fetch data from the API
//   Future<dynamic> getdata() async {
//     final res = await http.get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"));
//     var data = jsonDecode(res.body);
//     return data;
//   }

//   @override
//   void initState() {
//     // Call the getdata function when the widget is initialized
//     _data = getdata();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetApi'),
//       ),
//       body: FutureBuilder(
//         // Pass the Future to the FutureBuilder
//         future: _data,
//         builder: (context, snapshot) {
//           // Check the connection state of the Future
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             // If the Future is still loading, show a loading indicator
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             // If there is an error with the Future, display an error message
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           } else {
//             // If the Future has completed successfully, display the data
//             var data = snapshot.data;
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 // Customize how you want to display each item in the list
//                 return ListTile(
//                   title: Text(data[index]['employee_name']),
//                   subtitle: Text(data[index]['employee_salary']),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
