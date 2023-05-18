import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main(){
  runApp(MaterialApp(home: WatermarkApp()));
}
class WatermarkApp extends StatefulWidget {
  @override
  _WatermarkAppState createState() => _WatermarkAppState();
}

class _WatermarkAppState extends State<WatermarkApp> {
  File ?_image;
  bool _watermarked = false;

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
      _watermarked = false;
    });
  }

  Future<void> _watermarkImage() async {
    final bytes = await _image!.readAsBytes();
    final originalImage = img.decodeImage(bytes);

    final watermarkAsset = await rootBundle.load('assets/watermark.svg');
    final watermarkSvg = watermarkAsset.buffer.asUint8List();
    final watermarkImage = img.decodeJpg(watermarkSvg);

    final watermarkedImage = img.Image.from(originalImage!);
    img.drawImage(watermarkedImage, watermarkImage, dstX: 10, dstY: 10);

    final directory = await getTemporaryDirectory();
    final imagePath = '${directory.path}/watermarked_image.png';
    await File(imagePath).writeAsBytes(img.encodePng(watermarkedImage));

    setState(() {
      _image = File(imagePath);
      _watermarked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watermark App'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(_image!),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _watermarked ? null : _watermarkImage,
              child: Text('Add Watermark'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.image),
      ),
    );
  }
}
