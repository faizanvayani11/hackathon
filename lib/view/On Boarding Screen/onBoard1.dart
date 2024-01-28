// // import 'package:final_hackathon/view/SignInScreen/signinview.dart';
// // import 'package:flutter/material.dart';

// // class OnBoard2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         body: Column(
// //           children: [
// //             Expanded(
// //               child: Container(
// //                 width: double.infinity,
// //                 child: Image.asset(
// //                   "assets/onb2.png",
// //                   fit: BoxFit.fitWidth,
// //                 ),
// //               ),
// //             ),
// //             Expanded(
// //               child: Container(
// //                 color: Color(0xff0a0c16),
// //                 height: double.infinity,
// //                 width: double.infinity,
// //                 child: Stack(
// //                   children: [
// //                     Align(
// //                       alignment: Alignment.bottomRight,
// //                       child: Image.asset(
// //                         "assets/nButton.png",
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: EdgeInsets.all(16.0),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             'Task Management',
// //                             style: TextStyle(
// //                               fontFamily: 'Poppins',
// //                               color: Color(0XFF3580FF),
// //                               fontSize: 32.0,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                           SizedBox(height: 10.0),
// //                           Text(
// //                             "'Let's create a \nspace for your workflows.",
// //                             style: TextStyle(
// //                               fontFamily: 'Poppins',
// //                               color: Colors.white,
// //                               fontSize: 40.0,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                           SizedBox(height: 70),
// //                           TextButton(
// //                             onPressed: () {
// //                               Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                     builder: (context) => SignIn()),
// //                               );
// //                             },
// //                             child: Text(
// //                               "Skip",
// //                               style:
// //                                   TextStyle(fontSize: 20, color: Colors.white),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'dart:js';

// // import 'package:final_hackathon/view/SignInScreen/signinview.dart';
// import 'package:flutter/material.dart';

// class OnBoard2 extends StatelessWidget {
//   final List<String> imagePaths = [
//     "assets/onb2.png",
//     // Add other image paths for additional pages if needed
//   ];

//   final List<String> titles = [
//     'Task Management',
//     // Add other titles for additional pages if needed
//   ];

//   final List<String> descriptions = [
//     "'Let's create a \nspace for your workflows.",
//     // Add other descriptions for additional pages if needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: PageView.builder(
//           itemCount: imagePaths.length,
//           itemBuilder: (context, index) {
//             return buildOnBoardPage(
//                 imagePaths[index], titles[index], descriptions[index]);
//           },
//         ),
//       ),
//     );
//   }

//   Widget buildOnBoardPage(String imagePath, String title, String description) {
//     return Column(
//       children: [
//         Expanded(
//           child: Container(
//             width: double.infinity,
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.fitWidth,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Color(0xff0a0c16),
//             height: double.infinity,
//             width: double.infinity,
//             child: Stack(
//               children: [
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Image.asset(
//                     "assets/nButton.png",
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         title,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Color(0XFF3580FF),
//                           fontSize: 32.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       Text(
//                         description,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.white,
//                           fontSize: 40.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 70),
//                       TextButton(
//                         onPressed: () {
//                           // Navigator.push(
//                           //   context,
//                           //   MaterialPageRoute(builder: (context) => SignIn()),
//                           // );
//                         },
//                         child: Text(
//                           "Skip",
//                           style: TextStyle(fontSize: 20, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
