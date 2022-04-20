import 'package:flutter/material.dart';

loginPageImage(String path, Size size, bool isTablet) {
  return Container(
    width: size.width,
    // height: size.height * 0.45,
    child: Image.asset(
      path,
      fit: BoxFit.cover,
    ),
    decoration: isTablet ? BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              border: Border.all(
                style: BorderStyle.solid,
                color: Colors.blue,
                width: 4,
              ),
            ) : BoxDecoration(),
  );
}

loginText() {
  return Text(
    'Login',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  );
}

loginButton(double paddin) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Color(0XFF2743FF),
      padding: EdgeInsets.symmetric(horizontal: paddin, vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
    child: Text(
      'Login',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    onPressed: () {},
  );
}

forgotPasswordButton() {
  return TextButton(
    onPressed: () {},
    child: Text(
      'Forgot password ?',
      style: TextStyle(
          color: Color(0XFF2743FF), fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

userNameInputDecoration() {
  return InputDecoration(
    fillColor: Colors.grey[200],
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    hintText: 'User Name',
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
