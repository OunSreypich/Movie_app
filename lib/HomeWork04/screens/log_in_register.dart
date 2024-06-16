import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

class LogInRegister extends StatefulWidget {
  const LogInRegister({super.key});

  @override
  State<LogInRegister> createState() => _LogInRegisterState();
}

class _LogInRegisterState extends State<LogInRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'LogIn/Register',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone or Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.call, color: Colors.white),
                  //filled: true,
                  //fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Or continue with',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'By proceeding, you agree to our Terms of Service and Privacy Policy',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
