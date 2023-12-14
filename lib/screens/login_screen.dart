import 'package:flutter/material.dart';
import 'package:sisa/screens/signup_screen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F8FB),
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Poppins-Reguler',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Selamat Datang\nSilahkan masukkan akun anda\nyang sudah terdaftar di SiSa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Email'),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.orange,
                            ),
                          ),
                          errorText: isEmailValid ? null : "Email tidak valid",
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text('Kata Sandi'),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.only(
                                right: 16,
                                top: 8), // Adjust the padding as needed
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Lupa Kata Sandi ?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.orange),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Adjust the border radius as needed
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isEmailValid = emailController.text.isNotEmpty;
                            });
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0XFFA4A8AE)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signupscreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Belum Punya Akun? Daftar",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}