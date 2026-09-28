import 'package:class_28_sept/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List studentNames = ["Taba", "Imran", "Ayesha", "Hasan", "Haris", "Menahil", "Sana", "Abdullah", "Moiz", "Ali", "Humam"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              AppAssets.profilePic,
            ),
            radius: 100,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "List View Builder",
              style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
            ),

            Expanded(
              flex: 7,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 6, right: 8),
                itemCount: studentNames.length,
                itemBuilder: (context, index) {
                  final listName = studentNames[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 8),
                    // height: 100,
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.grey : Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            AppAssets.profilePic,
                          ),
                          radius: 50,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("$listName", style: const TextStyle(color: Colors.white, fontSize: 26)),
                            const Text("Flutter instructor", style: TextStyle(color: Colors.white, fontSize: 26)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
