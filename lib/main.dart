import 'package:flutter/material.dart';

void main() {
  runApp(const LoginUI());
}

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login UI',
            style: TextStyle(
              fontSize: 25,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        //resizeToAvoidBottomInset: false,
        body: SingleChildScrollView( // This Widget used to prevent Over flow error
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('Images/logo.png'),
                    height: 50,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make text bold
                        ),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold, // Make text bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Log in',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Basic Login UI For the user which \n is more attractive and beautiful',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    fillColor: Colors.white60,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffE4E7EB),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffE4E7EB),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    fillColor: Colors.white60,
                    filled: true,
                    suffixIcon: const Icon(Icons.visibility_off),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffE4E7EB),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffE4E7EB),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 17,
                      decoration: TextDecoration.underline,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  /*border: Border.all(
                    color: Colors.red,  // Border color
                    width: 3,          // Border width
                  ),*/
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 45,
                width: 290,
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueAccent),
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
