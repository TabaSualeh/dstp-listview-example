import 'package:class_28_sept/modal/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_assets.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Todo> todoList = [
    Todo(title: "Math HomeWork", description: "Do it now", dateTime: DateTime.now()),
    Todo(title: "Flutter Assignment", dateTime: DateTime(2001, 08, 02), isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Todo",
          style: GoogleFonts.actor(
            textStyle: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        // actions: [Icon(Icons.remove), Icon(Icons.add)],
        // leading: const Padding(
        //   padding: EdgeInsets.symmetric(
        //     vertical: 2,
        //   ),
        //   child: CircleAvatar(
        //     backgroundImage: AssetImage(
        //       AppAssets.profilePic,
        //     ),
        //     radius: 100,
        //   ),
        // ),
      ),
      body: Column(
        children: [
          Text(
            "List View Builder",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.black, fontSize: 43)),
          ),

          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 6, right: 8),
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final myTodoList = todoList[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.grey : Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: myTodoList.isCompleted,
                        onChanged: (isCheckValue) {
                          setState(() {
                            myTodoList.isCompleted = isCheckValue;
                            print("INSIDE VALUE $isCheckValue");
                          });
                        },
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          AppAssets.profilePic,
                        ),
                        radius: 34,
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(myTodoList.title, style: const TextStyle(color: Colors.white, fontSize: 26)),
                          if (myTodoList.description != null) ...[
                            Text(
                              myTodoList.description!,
                              style: const TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ],
                          Text(
                            "${myTodoList.dateTime.year}/${myTodoList.dateTime.month}/${myTodoList.dateTime.day}",
                            // myTodoList.dateTime.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          ),
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
    );
  }
}
