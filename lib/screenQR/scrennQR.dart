import 'package:flutter/material.dart';
import 'package:testproject/screenQR/qr_code.dart';

class QRCodeScreen extends StatelessWidget {
  final String price;

  QRCodeScreen({required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าจอ QR Code'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Price: $price'),
            MyQRCode.generateQRCode(price),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('กลับ'),
            ),
          ],
        ),
      ),
    );
  }
}
