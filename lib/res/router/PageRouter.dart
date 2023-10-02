// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:wifitensale/Views/LoginScreen.dart';
// import '../../Views/BusinessList.dart';
// import '../../Views/Home Screen/Home_Page.dart';
// import '../../Views/Splash Page.dart';
// import '../../Views/Update Network/Update Network 1.dart';
//
// class PageRouter {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     var loginscreen;
//     switch (settings.name) {
//       case SplashScreen.routeName:
//         return MaterialPageRoute(builder: (context) => SplashScreen());
//         break;
//       case HomeScreen.routeName:
//         return MaterialPageRoute(builder: (context) => HomeScreen());
//         break;
//       case LoginScreen.routeName:
//         return MaterialPageRoute(builder: (context) => LoginScreen());
//         break;
//       case UpdateNetworks.routeName:
//         final args = settings.arguments as String;
//       return MaterialPageRoute(builder: (context) => UpdateNetworks(siteName: args,));
//       break;
//       case BusinessList.routeName:
//         final args = settings.arguments as int;
//         return MaterialPageRoute(
//             builder: (context) => BusinessList(
//               type: args,
//             ));
//         break;
//
//
//       default:
//         return MaterialPageRoute(builder: (context) => HomeScreen());
//     }
//   }
// }
