import 'package:flutter/material.dart';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool _isDarkTheme = false;

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
                  activeColor: Colors.white,
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
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
          child: ListView(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          _isDarkTheme ? Colors.white : Colors.black,
                      radius: 25,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/ankit.jpg'),
                        radius: 23,
                      ),
                    ),
                    Text(
                      'Ankit Rathod',
                      style: TextStyle(
                        fontSize: 20,
                        color: _isDarkTheme ? Colors.white : Colors.black,
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text('IN'),
                    // ),
                    Container(
                      height: 35,
                      width: 100,
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
                      width: 100,
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
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          _isDarkTheme ? Colors.white : Colors.black,
                      radius: 25,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/ritika.jpg'),
                        radius: 23,
                      ),
                    ),
                    Text(
                      'Ritika Masalia',
                      style: TextStyle(
                        fontSize: 20,
                        color: _isDarkTheme ? Colors.white : Colors.black,
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text('IN'),
                    // ),
                    Container(
                      height: 35,
                      width: 100,
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
                      width: 100,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
