import 'package:class_28_sept/modal/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_assets.dart';
import '../constants/app_colors.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final List<Todo> todoList = [
    Todo(title: "Math HomeWork", description: "Do it now"),
    Todo(title: "Math HomeWork", description: "Do it now"),
    Todo(title: "Flutter Assignment", dateTime: DateTime(2001, 08, 02), isCompleted: true),
    Todo(title: "Flutter Assignment", dateTime: DateTime(2001, 08, 02), isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.fabColor,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: AppColors.bottomSheetBgColor,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            // isDismissible: false,
            context: context,
            builder: (context) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "New Task",
                            style: GoogleFonts.acme(color: AppColors.primaryText, fontSize: 26),
                          ),
                          const Spacer(),
                          IconButton(
                            iconSize: 22,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Container(
                              decoration: const BoxDecoration(color: AppColors.cancelIconColor, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: AppColors.bgColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      TextField(
                        controller: titleController,
                        style: const TextStyle(color: AppColors.primaryText),
                        decoration: InputDecoration(
                          fillColor: AppColors.inputFieldBgColor,
                          filled: true,
                          hint: Text(
                            "Enter Task Title",
                            style: GoogleFonts.roboto(color: AppColors.inputHintTextColor),
                          ),
                          label: Text(
                            "TITLE",
                            style: GoogleFonts.roboto(color: AppColors.primaryText.withValues(alpha: 0.6)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: AppColors.taskCardBorderColor.withValues(alpha: 0.7),
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.taskCardBorderColor,
                              width: 2.0,
                            ),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        controller: descriptionController,
                        minLines: 4,
                        maxLines: 20,
                        style: const TextStyle(color: AppColors.primaryText),
                        decoration: InputDecoration(
                          fillColor: AppColors.inputFieldBgColor,
                          filled: true,
                          hint: Text(
                            "Enter Description (optional)",
                            style: GoogleFonts.roboto(color: AppColors.inputHintTextColor),
                          ),
                          label: Text(
                            "DESCRIPTION",
                            style: GoogleFonts.roboto(color: AppColors.primaryText.withValues(alpha: 0.6)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: AppColors.taskCardBorderColor.withValues(alpha: 0.7),
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.taskCardBorderColor,
                              width: 2.0,
                            ),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBtnColor),
                          child: Text(
                            "ADD TASK",
                            style: GoogleFonts.acme(color: AppColors.primaryBtnTextColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: AppColors.fabIconColor,
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.appbarColor,
        title: Text(
          "Home Page",
          style: GoogleFonts.acme(
            fontSize: 26,
            color: AppColors.bgColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "DSTP - Todo ",
            style: GoogleFonts.acme(textStyle: const TextStyle(color: Colors.white, fontSize: 43)),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final myTodoList = todoList[index];
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: AppColors.taskCardBgColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: (myTodoList.isCompleted ?? false) ? AppColors.taskCardBorderColor.withValues(alpha: 0.5) : AppColors.taskCardBorderColor, width: 1.5),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: AppColors.bgColor,
                        activeColor: AppColors.activeCheckboxColor,
                        side: const BorderSide(color: AppColors.inactiveCheckboxBorderColor),
                        value: myTodoList.isCompleted,
                        onChanged: (bool? isCheckValue) {
                          setState(() {
                            myTodoList.isCompleted = isCheckValue;
                          });
                        },
                      ),
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: (myTodoList.isCompleted ?? false) ? AppColors.taskCardBorderColor.withValues(alpha: 0.4) : AppColors.taskCardBorderColor,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            AppAssets.profilePic,
                          ),
                          radius: 34, // Original radius
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              myTodoList.title,
                              style: TextStyle(
                                color: (myTodoList.isCompleted ?? false) ? AppColors.completedText : AppColors.primaryText,
                                fontSize: 20,
                                decoration: (myTodoList.isCompleted ?? false) ? TextDecoration.lineThrough : null,
                                decorationColor: AppColors.primaryText.withValues(alpha: 0.5),
                                decorationThickness: 1.2,
                              ),
                            ),
                            Row(
                              children: [
                                if (myTodoList.description != null) ...[
                                  Expanded(
                                    child: Text(
                                      myTodoList.description!,
                                      style: const TextStyle(color: AppColors.secondaryText, fontSize: 16),
                                    ),
                                  ),
                                ],
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Text(
                                    myTodoList.dateTime != null ? "${myTodoList.dateTime?.year}/${myTodoList.dateTime?.month}/${myTodoList.dateTime?.day}" : "",
                                    style: const TextStyle(color: AppColors.secondaryText, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
