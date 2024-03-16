import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/shape7.png'),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome Back!',
                      style: GoogleFonts.ubuntu(
                          color: Colors.amber,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        // padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Colors.black26)),
                        child: _emailInput()),
                    SizedBox(height: defaultPadding),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Colors.black26)),
                        child: _passInput()),
                    _checkboxMe()
                  ],
                ),
              ),
              Image.asset('assets/images/shape6.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailInput() {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          height: 10,
          width: 10,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.email_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 15, 25, 15),
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: 'Email Address',
        focusedBorder: InputBorder.none,
      ),
    );
  }

  Widget _passInput() {
    return const TextField(
      obscureText: true,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          height: 10,
          width: 10,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.lock_outline,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 15, 20, 15),
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: 'Password',
        focusedBorder: InputBorder.none,
      ),
    );
  }

  Widget _checkboxMe() {
    return Row(
      children: [
        Checkbox(
            checkColor: Colors.grey,
            activeColor: Colors.amber,
            value: isChecked,
            onChanged: (bool? value) {
              isChecked = value!;
              setState(() {});
            })
      ],
    );
  }
}
