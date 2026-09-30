import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_assets.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List studentNames = ["Taba", "Imran", "Ayesha", "Hasan", "Haris", "Menahil", "Sana", "Abdullah", "Moiz", "Ali", "Humam", "Mubeen"];
  bool isList = true;

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
      body: Column(
        children: [
          Text(
            "List View Builder",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
          ),

          if (isList) ...[
            Text("IS LIST IS TRUE"),
            Text("IS LIST IS TRUE"),
          ],

          Expanded(
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
          Text(
            "List View Builder",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
          ),
          Text(
            "List View Builder",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
          ),
          Text(
            "List View Builder",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
          ),
        ],
      ),
    );
  }
}
