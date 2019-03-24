import 'package:flutter/material.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:logging/logging.dart';

final Logger _log =Logger('qr_scanner');

class QrScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: QrCamera(
        qrCodeCallback: (code) {
          _log.info('Code: $code');
        },
      ),
    );
  }
}