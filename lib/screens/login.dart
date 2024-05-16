import 'package:flutter/material.dart';
import 'home.dart'; 

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], 
        centerTitle: true, 
        title: Text(
          'Halo!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), 
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              SizedBox(height: 20), 
              Text(
                'Selamat Datang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[300]), 
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30), 
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.blue[900]), 
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 3, 47, 113)),
                  ),
                ),
                cursorColor: Colors.blue[900], 
                style: TextStyle(color: Colors.blue[300]), 
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blue[900]), 
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 5, 48, 113)), 
                  ),
                ),
                cursorColor: Colors.blue[900],
                style: TextStyle(color: Colors.blue[300]),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.blue[900], 
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        'Masuk',
                        style: TextStyle(color: Colors.white), 
                      ),
                    ),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
