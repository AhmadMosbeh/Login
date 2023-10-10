import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class LOgin_screen extends StatefulWidget {
  LOgin_screen({super.key});

  @override
  State<LOgin_screen> createState() => _LOgin_screenState();
}

class _LOgin_screenState extends State<LOgin_screen> {
  var formk = GlobalKey<FormState>();
  late bool vaue = false;
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: formk,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Icon(
                    Icons.person,
                    size: 250,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 2),
                  child: TextFormField(
                    controller: controller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please inter your name";
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_2_rounded),
                      labelText: 'UserName*',
                      //errorText: 'please enter your email',
                      hintText: 'please enter your email',
                      hoverColor: Color.fromARGB(
                        255,
                        16,
                        205,
                        70,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 2),
                  child: TextFormField(
                    controller: controller2,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please inter your password";
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      labelText: 'Password*',
                      hintText: 'please enter your password',
                      hoverColor: Color.fromARGB(
                        255,
                        16,
                        205,
                        70,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SwitchListTile(
                    title: const Text(
                      'remember me',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    value: vaue,
                    onChanged: (bool value) {
                      setState(() {
                        vaue = value;
                      });
                    },
                    activeColor: Colors.green),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(380, 50),
                  ),
                  onPressed: () {
                    if (formk.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(
                              Username: controller.text,
                              Pasword: controller2.text,
                            ),
                          ));
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Trouble logging in?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
