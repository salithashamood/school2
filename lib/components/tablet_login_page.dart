import 'package:flutter/material.dart';
import 'package:school2/components/widget_components.dart';

class TabletLoginPage extends StatefulWidget {
  const TabletLoginPage({Key? key}) : super(key: key);

  @override
  State<TabletLoginPage> createState() => _TabletLoginPageState();
}

class _TabletLoginPageState extends State<TabletLoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isVisiblePassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          loginPageImage('assets/images/tablet_login_bg.png', size, true),
          SizedBox(
            height: 100,
          ),
          loginText(),
          SizedBox(
            height: 10,
          ),
          Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.transparent,
                    width: 350,
                    child: TextField(
                      controller: _userName,
                      decoration: userNameInputDecoration(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.transparent,
                    width: 350,
                    child: TextField(
                      obscureText: !isVisiblePassword,
                      controller: _password,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isVisiblePassword
                                ? Icons.visibility_off_outlined
                                : Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              
                            isVisiblePassword = !isVisiblePassword;
                            });
                          },
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.transparent,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        forgotPasswordButton(),
                        SizedBox(
                          width: 10,
                        ),
                        loginButton(70),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
