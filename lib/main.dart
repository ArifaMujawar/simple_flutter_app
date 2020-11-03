import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      )));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "chnage My name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple App"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/bg-photo.jpg",
                    ),
                    SizedBox(height: 20),
                    Text(myText,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter some text",
                            labelText: "Name"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Arifa M'),
                accountEmail: Text('arifa@m.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Arifa Mujawar"),
                subtitle: Text("Developer"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("arifa@m.com"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: Icon(Icons.send),
        ));
  }
}
