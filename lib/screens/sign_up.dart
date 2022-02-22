import 'package:flutter/material.dart';

import '../themes.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logo(),
              header(),
              fullnameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              SizedBox(
                height: height * 0.14,
              ),
              signUpButton(context),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }

  SafeArea logo() {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 18),
            width: 70,
            height: 90,
            alignment: Alignment.topLeft,
            child: Image.asset('assets/lamp.png'),
          ),
          Column(
            children: [
              const SizedBox(
                height: 81,
              ),
              Center(
                child: SizedBox(
                  width: 196,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      margin: const EdgeInsets.only(
        top: 60,
        left: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SIGN UP',
            style: primaryText.copyWith(
              letterSpacing: 3,
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget fullnameInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 35,
      ),
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffE3E3E3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.account_circle,
            color: Color(0xff8A8A8A),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: TextFormField(
            style: primaryText,
            // controller: emailController,
            decoration: InputDecoration.collapsed(
              hintText: 'Full Name',
              hintStyle: secondaryText.copyWith(
                letterSpacing: 2,
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 35,
      ),
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffE3E3E3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.person_rounded,
            color: Color(0xff8A8A8A),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: TextFormField(
            style: primaryText,
            // controller: emailController,
            decoration: InputDecoration.collapsed(
              hintText: 'Username',
              hintStyle: secondaryText.copyWith(
                letterSpacing: 2,
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 35,
      ),
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffE3E3E3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.email_rounded,
            color: Color(0xff8A8A8A),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: TextFormField(
            style: primaryText,
            // controller: emailController,
            decoration: InputDecoration.collapsed(
              hintText: 'Email',
              hintStyle: secondaryText.copyWith(
                letterSpacing: 2,
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 35,
      ),
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffE3E3E3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.lock_rounded,
            color: Color(0xff8A8A8A),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: TextFormField(
            style: primaryText,
            obscureText: true,
            decoration: InputDecoration.collapsed(
              hintText: 'Password',
              hintStyle: secondaryText.copyWith(
                letterSpacing: 2,
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget signUpButton(context) {
    return Container(
      height: 52,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'SIGN UP',
          style: primaryText.copyWith(
            letterSpacing: 3,
            color: Colors.white,
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }

  Widget footer(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: secondaryText.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text(
              'Sign In',
              style: primaryText.copyWith(
                color: blueColor,
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
