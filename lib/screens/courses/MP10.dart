import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:bookhub/screens/components/cardbox.dart';
import 'package:bookhub/screens/components/pdfdownload.dart';
import 'package:bookhub/screens/components/slider.dart';

class MP10 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        foregroundColor: Colors.black54,
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.purple,
        title: Text("Microprocessor", style: TextStyle(color: Colors.black87)),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 40),
        child: ListView(
          children: [
            Pdfdownload(
                imageName:
                    "https://pustakalaya.org/media/uploads/thumbnails/document/2020/07/30/Microprocessor__Grade_10.jpg",
                pdfName: "Microprocessor",
                url:
                    "https://pustakalaya.org/media/uploads/documents/2020/07/30/_4017130a/Grade_-_10_Computer_Engineering_-_Microprocessor.pdf"),
            CardBox(
              text: "Question Paper Collections",
              fontsize: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              height: 460.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp-2075.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp-2-2075.jpg",
                      fit: BoxFit.contain,
                      scale: 2.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              height: 460.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp-2074.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp-2-2074.jpg",
                      fit: BoxFit.contain,
                      scale: 2.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              height: 460.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp1.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FullScreenWidget(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/Class10/CE/MP/mp2.jpg",
                      fit: BoxFit.contain,
                      scale: 2.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
