import 'package:flutter/material.dart';
import 'package:qr_code_scanner/controllers/qr_code_genarate.dart';
import 'package:qr_code_scanner/controllers/qr_code_scanner.dart';

void main() {
	runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		home: Scaffold(
			appBar: AppBar(
				title: const Text("Qr Code Scanner and Generator"),
				backgroundColor: Colors.blue,
			),
			body: Center(
				child: Column(
					children: [
						ElevatedButton(onPressed: (){
							Navigator.of(context).
							push(
								MaterialPageRoute(builder: (context) {
									return const QrCodeScanner();
								})
								);
						}, child: const Text("Scan Qr Code")),
						const SizedBox(height: 200,),
						ElevatedButton(onPressed: (){
							Navigator.of(context).
							push(
								MaterialPageRoute(builder: (context) {
									return const GenerateQrCode();
								})
								);
						}, child: const Text("Generate Qr Code")),
					],
				),
			),
		),
	);
  }
}
