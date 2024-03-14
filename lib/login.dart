import 'package:flutter/material.dart';


class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'ENTER YOUR ROLL NUMBER',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person, color: Colors.white)),
                )),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'ENTER PASSWORD',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.key, color: Colors.white))),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                onPressed: () {},
                child: const Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            Text("Don't have an account already??",
                style: TextStyle(color: Colors.white)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page2();
                  }));
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

