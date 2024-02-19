import 'package:flutter/material.dart';
import 'package:flutter_application_8/view/home_screen/home_screen_2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    TextEditingController namecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formkey,
              child: TextFormField(
                enabled: true,
                cursorColor: Colors.red,
                controller: namecontroller,
                decoration: InputDecoration(
                    // disabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.green)),
                    labelText: "user name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "the field is empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                enabled: true,
                cursorColor: Colors.red,
                controller: passwordcontroller,
                decoration: InputDecoration(
                    // disabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.green)),
                    labelText: "password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue))),
                validator: (value) =>
                    value!.length < 3 ? "password should be min 3 chr" : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  formkey.currentState!.validate();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen2(),
                      ));
                },
                child: Text("login")),
          ],
        ),
      ),
    );
  }
}

