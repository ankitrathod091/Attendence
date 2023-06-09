import 'package:flutter/material.dart';
import 'package:attendence/add_staff/add_staff.dart';
import 'package:attendence/classes.dart';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool _isDarkTheme = true;

  void toggleTheme(bool value) {
    setState(() {
      _isDarkTheme = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Demo',
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 0,
          // backgroundColor:
          //     _isDarkTheme ? Colors.transparent : Colors.transparent,
          backgroundColor:
              _isDarkTheme ? Colors.grey.shade700 : Colors.transparent,
          title: SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Switch(
                  value: _isDarkTheme,
                  onChanged: toggleTheme,
                  activeTrackColor: Colors.grey[600],
                  activeThumbImage: AssetImage('assets/images/moon.png'),
                  activeColor: Colors.transparent,
                  inactiveThumbImage: AssetImage('assets/images/sun.png'),
                  inactiveThumbColor: Colors.transparent,
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    print(_isDarkTheme);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => add_staff(_isDarkTheme),
                        ));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 25,
                    color: _isDarkTheme ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: staff_data.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            _isDarkTheme ? Colors.white : Colors.black,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(staff_data[index]['image']),
                          radius: 23,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            labelText: staff_data[index]['name'],
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                              fontSize: 20,
                              color: _isDarkTheme ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: _isDarkTheme
                                ? LinearGradient(
                                    colors: [Colors.white, Colors.white])
                                : LinearGradient(colors: [
                                    Colors.green,
                                    Colors.green.shade800
                                  ]),
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.grey)
                            ]),
                        child: Center(
                            child: Text('IN',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: _isDarkTheme
                                        ? Colors.black
                                        : Colors.white))),
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: _isDarkTheme
                                ? LinearGradient(
                                    colors: [Colors.white, Colors.white])
                                : LinearGradient(
                                    colors: [Colors.red, Colors.red.shade800]),
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.grey)
                            ]),
                        child: Center(
                            child: Text('OUT',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: _isDarkTheme
                                        ? Colors.black
                                        : Colors.white))),
                      ),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
