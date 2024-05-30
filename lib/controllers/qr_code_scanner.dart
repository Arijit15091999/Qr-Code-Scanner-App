import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  String qrCodeResult = "Your scan result will be shown here"; 

  Future<String> scanQrCodeHandler () async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                                                    "#ff6666", 
                                                    "cancel", 
                                                    true, 
                                                    ScanMode.QR);
    return barcodeScanRes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Code"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(qrCodeResult),
            ElevatedButton(onPressed: ()async{
              qrCodeResult = await scanQrCodeHandler();
              setState(() {
                
              });
            }, child:  const Text("Scan QR")),
          ],
        )
      ),
    );
  }
}