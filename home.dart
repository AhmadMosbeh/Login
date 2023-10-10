import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key, required this.Username, required this.Pasword});

  String Username;
  String Pasword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Username="";
            Pasword="";
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
        ),
        shadowColor: Colors.grey,
        toolbarHeight: 75,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'fonts/LibreBaskerville-Regular.ttf',
              fontSize: 38,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 17),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 85,
              child: CircleAvatar(
                radius: 81,
                backgroundImage: AssetImage(
                  'images/me.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Card(
              elevation: 0,
              child: ListTile(
                title: Text(
                  'ID',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'color: Colors.black'),
                ),
                subtitle: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 20,
                    color:Color.fromARGB(255, 32, 190, 124),
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text(
                'userName',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'color: Colors.black'),
              ),
              subtitle: Text(
                Username,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 32, 190, 124),
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: const Text(
                'Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontFamily: 'color: Colors.black',
                ),
              ),
              subtitle: Text(
                Pasword,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 32, 190, 124),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
