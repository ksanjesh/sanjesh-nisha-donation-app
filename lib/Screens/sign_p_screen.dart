import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.indigo, Colors.orange]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  Icons.ad_units,
                  size: 100,
                  color: Colors.white,
                ),
              ),

              GradientText(
                  "Sing Up",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 40),
                  colors: [Colors.orange, Colors.white,Colors.red]),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.150),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your full name",
                      labelText: "full name",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.redAccent.withOpacity(0.150),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your phone no",
                      labelText: "phone no",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.150),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your email",
                      labelText: "email",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.150),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter your password",
                      labelText: "password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Register",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Text("Already have an Account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
