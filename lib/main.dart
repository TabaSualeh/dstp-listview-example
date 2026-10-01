import 'package:class_28_sept/view/login_screen.dart';
import 'package:class_28_sept/view/todo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      home: TodoScreen(),
    );
  }
}

/**
 *
 * ListView(
    padding: EdgeInsets.only(left: 8, right: 8),
    children: [
    ListTile(
    title: Text("This is ListTile"),
    ),
    Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    width: double.infinity,
    margin: EdgeInsets.only(top: 8),
    // height: 100,
    decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    SizedBox(
    width: 9,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Taba Sualeh", style: TextStyle(color: Colors.white, fontSize: 26)),
    Text("Flutter instructor", style: TextStyle(color: Colors.white, fontSize: 26)),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    Container(
    width: double.infinity,
    // height: 100,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),

    margin: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
    child: Row(
    children: [
    CircleAvatar(
    backgroundImage: AssetImage(
    AppAssets.profilePic,
    ),
    radius: 50,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Taba Sualeh",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    Text(
    "Software Engineer",
    style: GoogleFonts.poppins(
    textStyle: const TextStyle(color: Colors.white, fontSize: 26),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ],
    )
 *
 *
 */

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               color: Colors.green,
//               height: 120,
//               width: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const CircleAvatar(
//                         backgroundImage: AssetImage(
//                           AppAssets.profilePic,
//                         ),
//                         radius: 50,
//                       ),
//                       Spacer(),
//                       Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//
//                           borderRadius: BorderRadius.circular(50),
//                           image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(
//                               AppAssets.profilePic,
//                             ),
//                           ),
//                         ),
//                       ),
//                       // Image.asset(name),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
