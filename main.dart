import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

//////////////////////////////////////////////////
// LOGIN PAGE
//////////////////////////////////////////////////

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),

              Icon(
                Icons.location_on,
                color: Colors.red,
                size: 40,
              ),

              SizedBox(height: 10),

              Text(
                "Hipcamp",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 40),

              socialButton("Continue with Google"),
              SizedBox(height: 15),

              socialButton("Continue with Facebook"),
              SizedBox(height: 15),

              socialButton("Continue with Apple"),

              SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email or username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 10),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Don't Have Account ? Please Sign up",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////
// SIGNUP PAGE
//////////////////////////////////////////////////

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),

              Icon(
                Icons.location_on,
                color: Colors.red,
                size: 40,
              ),

              SizedBox(height: 10),

              Text(
                "Hipcamp",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 40),

              socialButton("Continue with Google"),
              SizedBox(height: 15),

              socialButton("Continue with Facebook"),
              SizedBox(height: 15),

              socialButton("Continue with Apple"),

              SizedBox(height: 30),

              buildTextField("Name"),
              SizedBox(height: 20),

              buildTextField("Email"),
              SizedBox(height: 20),

              buildTextField("Password"),

              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpPage(),
                    ),
                  );
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Already Have An Account ? Please Login",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////
// OTP PAGE
//////////////////////////////////////////////////

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100),

            Text(
              "Verify Code",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            Text(
              "Please enter the code",
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpBox(),
                otpBox(),
                otpBox(),
                otpBox(),
              ],
            ),

            SizedBox(height: 30),

            Text(
              "Resend Code",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Verify",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////
// WIDGETS
//////////////////////////////////////////////////

Widget socialButton(String text) {
  return Container(
    height: 55,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    ),
  );
}

Widget buildTextField(String hint) {
  return TextField(
    obscureText: hint == "Password" ? true : false,
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}

Widget otpBox() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Text(
        "-",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
