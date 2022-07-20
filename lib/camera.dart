import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  DateTime dateTime = DateTime.now();
  getDate() async {
    dateTime = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2023),
    ))!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  ImagePicker _imagePicker = ImagePicker();
  XFile? img;
  File? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              getDate();
            });
          },
          child: Text("Date"),
        ),
        Text(dateTime.day.toString() +
            "-" +
            dateTime.month.toString() +
            "-" +
            dateTime.year.toString()),
        ElevatedButton(
          onPressed: () {
            _imagePicker.pickImage(source: ImageSource.camera);
            if (img == null) {
              setState(() {
                image = File(img!.path);
              });
            }
          },
          child: Text("img"),
        ),
      ],
    );
  }
}
