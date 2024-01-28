// import 'package:final_hackathon/view/OnBoardingScreen/onBoard1.dart';
// import 'package:final_hackathon/view/SignInScreen/signinview.dart';
// import 'package:flutter/material.dart';

// class OnBoardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 child: Image.asset(
//                   "assets/back.png",
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Color(0xff0a0c16),
//                 height: double.infinity,
//                 width: double.infinity,
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: Image.asset(
//                         "assets/nButton.png",
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Task Management',
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               color: Color(0XFF3580FF),
//                               fontSize: 32.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 10.0),
//                           Text(
//                             "'Let's create a \nspace for your workflows.",
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               color: Colors.white,
//                               fontSize: 40.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 70),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SignIn()),
//                               );
//                             },
//                             child: Text(
//                               "Skip",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OnBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       itemCount: 2, // Number of pages
//       itemBuilder: (context, index) {
//         return OnBoard2();
//       },
//     );
//   }
// }

// import 'package:final_hackathon/view/SignInScreen/signinview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardPage extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/back.png",
    "assets/onb2.png",
    "assets/onb3.png",
    // Add other image paths for additional pages if needed
  ];

  final List<String> titles = [
    'Task Management',
    'Task Management',
    'Task Management',
    // Add other titles for additional pages if needed
  ];

  final List<String> descriptions = [
    "Let's create a \nspace for your workflows.",
    "Work more Structured and Organized 👌",
    "Manage your Tasks quickly for Results✌",
    // Add other descriptions for additional pages if needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return buildOnBoardPage(
                imagePaths[index], titles[index], descriptions[index]);
          },
        ),
      ),
    );
  }

  Widget buildOnBoardPage(String imagePath, String title, String description) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Color(0xff0a0c16),
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/nButton.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0XFF3580FF),
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        description,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 70),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/signIn');
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
