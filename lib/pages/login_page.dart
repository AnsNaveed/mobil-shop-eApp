import 'package:flutter/material.dart';
import 'package:mobile_app/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButon = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButon = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRote);
      setState(() {
        changeButon = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_images.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: " Enter username", labelText: "username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: " Enter Password",
                          labelText: "password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Passeword can't be empty";
                          } else if (value.length < 6) {
                            return "password length should be at atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40.0),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButon ? 50 : 7),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButon ? 50 : 150,
                            height: 40,
                            alignment: Alignment.center,
                            child: changeButon
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text("login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
