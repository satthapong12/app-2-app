import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQRCode {
  static Widget generateQRCode(String inputData) {
    return Center(
    child: QrImageView(
      data: inputData,
      version: QrVersions.auto,
      size: 200.0,
),
    );
  }
}

