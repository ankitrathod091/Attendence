import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import '../classes.dart';

class add_staff extends StatefulWidget {
  final bool _isDarkTheme;

  add_staff(this._isDarkTheme);

  @override
  State<add_staff> createState() => _add_staffState();
}

class _add_staffState extends State<add_staff> {
  bool get _isDarkTheme => widget._isDarkTheme;
  late String imagePath;

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        if (Platform.isIOS) {
          // For iOS, use the `pickedImage.path` directly
          imagePath = pickedImage.path;
        } else {
          // For Android, compress the image using the `FlutterNativeImage` package
          final Future<File> resizedImage = FlutterNativeImage.compressImage(
            pickedImage.path,
            quality: 70,
            percentage: 100,
          );

          // imagePath = resizedImage.path;
        }
      });
    }
  }

  Widget hello() {
    return AlertDialog(

        // child: Container(
        //   height: 200,
        //   width: double.infinity,
        //   color: Colors.amber,
        // ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  maxRadius: 70,
                  minRadius: 50,
                  backgroundColor: _isDarkTheme ? Colors.white : Colors.black,
                  child: GestureDetector(
                    onTap: _selectImage,
                    child: CircleAvatar(
                      maxRadius: 65,
                      minRadius: 45,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter Staff Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: _isDarkTheme ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Number',
                    hintText: 'Enter Staff Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: _isDarkTheme ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Staff Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: _isDarkTheme ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    hintText: 'Enter Staff Date of Birth',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: _isDarkTheme ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: _isDarkTheme ? Colors.white : Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: _isDarkTheme ? Colors.black : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
