import 'package:flutter/material.dart';
import 'package:testproject/screenCradit/ScreenCradit.dart';
import 'package:testproject/screenQR/mainScrennQR.dart';



void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenCradit()));
                },
                style: ElevatedButton.styleFrom(
                  splashFactory: InkRipple.splashFactory,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 1.0, color: Colors.blue),
                  ),
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.network(
                            'https://pixabay.com/get/ge23800a9988dc7880497aefe1682f0b7b7706b1a991b7c5ee64045808e3421f2aedc80ae29c5abb719e9a0420a8679ecc0bf02adbb9c5a536758e91b2644dbb8_1280.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenSecond()));
                },
                style: ElevatedButton.styleFrom(
                  splashFactory: InkRipple.splashFactory,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 1.0, color: Colors.green),
                  ),
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.network(
                            'https://mega.nz/file/5fs0wQBZ#jfI___kwHjnexcCIVqk8dIIqawcW0cAYnWdXCKrzPCU',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
