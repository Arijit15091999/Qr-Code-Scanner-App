import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  @override
  Widget build(BuildContext context) {
    TextEditingController urlController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QR Code"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(urlController.text.isNotEmpty) 
              QrImageView(
                data: urlController.text,
                version: QrVersions.auto,
                size: 200.0,
              ),
            
            const SizedBox(height: 200,),
            TextField(
              controller: urlController,
              onChanged: (value){
                setState(() {
                  
                });
              },
            )
          ],
        ),
      ),
    );
  }
}