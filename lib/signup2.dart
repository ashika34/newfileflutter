// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   Future <void> register() async{
   
//     try {
//       final response =await http.post(Uri.parse('https://reqres.in/api/register'),
//       body:{
//         'email':emailController,
//         'password':passwordController,

//       }
//       );
//       if(response.statusCode==200)
//       {
//         print('success');
//       }
//       else{
// print('failed');
//       }
//     } catch (e) {
//       print(e.toString());
      
//     }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup API'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                     hintText: 'Email',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))))),
//                         SizedBox(
//                           height: 30,
//                         ),
//             TextFormField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                   hintText: 'Password',
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10)))),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 50,
//               color: Colors.greenAccent,
//               decoration: BoxDecoration(
//                  color: Colors.greenAccent,
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//               ),
            
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
