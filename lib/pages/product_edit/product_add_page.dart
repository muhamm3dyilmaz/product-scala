import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:product_scala/widgets/textform_widget.dart';

const List<String> list = <String>['Yüzük', 'Kolye', 'Bileklik', 'Saat'];

class ProductAddPage extends StatefulWidget {
  const ProductAddPage({super.key});

  @override
  State<ProductAddPage> createState() => _ProductAddPageState();
}

class _ProductAddPageState extends State<ProductAddPage> {
  Uint8List? _imageFile;

  String dropdownValue = list.first;

  get base64 => null;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        _imageFile = bytes;
      });
    } else {
      setState(() {
        _imageFile = null;
        debugPrint('Image file picked: $_imageFile');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              //büyük container
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(85, 100, 0, 0),
                    child: Container(
                      height: _mediaQuery.size.height * 0.6,
                      width: _mediaQuery.size.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 214, 214, 213),
                      ),
                      child: _imageFile != null
                          ? Image.memory(
                              _imageFile!,
                              fit: BoxFit.cover,
                            )
                          : IconButton(
                              icon: const Icon(
                                Icons.add,
                                size: 50,
                              ),
                              onPressed: () async {
                                await _pickImage(ImageSource.gallery);
                              },
                            ),
                    ),
                  ),
                ],
              ),
              //textformfieldlar
              Column(
                children: [
                  //1.textform
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 155, 0, 0),
                    child: TextFormWidget(
                      formText: "Ürün Adı",
                    ),
                  ),
                  //2.textform
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: TextFormWidget(
                      formText: "Ürün Kodu",
                    ),
                  ),
                  //3.textform
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: TextFormWidget(
                      formText: "Ürün Açıklaması",
                    ),
                  ),

                  //Dropdown menü
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 98, 97, 97),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: _mediaQuery.size.height * 0.06,
                      width: _mediaQuery.size.width * 0.4,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        focusColor: const Color.fromARGB(255, 255, 255, 255),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        elevation: 40,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 70, 70, 70),
                        ),
                        underline: Container(height: 2, color: Colors.transparent),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  //ekle butonu
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 25, 0, 170),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Ekle"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
