import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  final names = [];
  bool isProtected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Text(
                "Login Screen",
                style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 46, color: Colors.black)),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 150,
                width: 120,
                color: Colors.green,
              ),
              SizedBox(
                height: 36,
              ),
              TextField(
                obscureText: isProtected,
                controller: usernameController,
                // autofillHints: const [AutoFillHints.email],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  hint: Text("John Doe"),
                  label: Text("Enter your username"),
                  prefix: Icon(
                    Icons.person,
                  ),
                  suffix: IconButton(
                    onPressed: () {
                      isProtected = !isProtected;
                      setState(() {});
                    },
                    icon: Icon(isProtected ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              ElevatedButton(
                onPressed: () {
                  names.add(usernameController.text);
                  print("NAMES====> $names");
                  setState(() {});
                },
                child: Text("USERNAME"),
              ),
              SizedBox(
                height: 34,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Text(
                      names[index],
                      style: TextStyle(color: Colors.red),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
