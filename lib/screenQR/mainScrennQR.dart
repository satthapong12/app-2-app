import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testproject/screenQR/scrennQR.dart';

class ScreenSecond extends StatelessWidget {
    const ScreenSecond({super.key});

    @override
  Widget build(BuildContext context) {
    TextEditingController priceController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen QR'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          TextField(
            controller: priceController,
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Field 2'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Field 3'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Field 4'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Field 5'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
              child: Text('Home'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

          ElevatedButton(
  onPressed: () {
    // ตรวจสอบว่ามีข้อมูลที่ถูกกรอกเข้ามาหรือไม่
    if (priceController.text.isNotEmpty) {
      // นำค่าไปยังหน้าสร้าง QRCode
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QRCodeScreen(price: priceController.text),
        ),
      );
    } else {
      // แจ้งเตือนถ้าข้อมูลไม่ถูกกรอก
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('กรุณากรอกข้อมูล'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  },
  child: Text('Continue'),
),
          ],
        ),
      ),
    );
  }
}
