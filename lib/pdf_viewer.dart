import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdftron_flutter/pdftron_flutter.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  final String _document = "http://www.africau.edu/images/default/sample.pdf";
  late DocumentViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: DocumentView(onCreated: (DocumentViewController controller) => onDocumentViewCreated(controller))),
    );
  }

  void onDocumentViewCreated(DocumentViewController controller) async {
    this.controller = controller;
    controller.openDocument(_document);
  }
}
