import 'package:findmefront/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey();
    final deviceSize = MediaQuery.of(context).size;
    Map<String, String> _authData = {
      'email': '',
      'password': '',
    };
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
                Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 1],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8.0,
                      child: Container(
                        height: 320,
                        constraints: BoxConstraints(minHeight: 320),
                        width: deviceSize.width * 0.75,
                        padding: EdgeInsets.all(16.0),
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'E-Mail'),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty || !value.contains('@')) {
                                      return 'Invalid email!';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _authData['email'] = value!;
                                  },
                                ),
                                TextFormField(
                                  decoration:
                                  InputDecoration(labelText: 'Password'),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value!.isEmpty || value.length < 5) {
                                      return 'Password is too short!';
                                    }
                                  },
                                  onSaved: (value) {
                                    _authData['password'] = value!;
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  child: Text('REGISTER'),
                                  onPressed:  () {
                                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                                  },
                                ),
                                TextButton(
                                  child: Text('login instead'),
                                  onPressed:() {
                                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
