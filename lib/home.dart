import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';

class Home extends StatefulWidget {
  // List<DropdownMenuItem> get items {
  //   List<DropdownMenuItem> items = [];
  //   for (int i = 0; i < choices.length; i++) {
  //     items.add(
  //       DropdownMenuItem(child: Text(choices[i]), value: i),
  //     );
  //   }
  //   return items;
  // }

  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  int _value = 9;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    PdfViewer.loadAsset(
      'assets/04_Mushaf_AlMadinah_N_G_549_1.pdf',
      config: PdfViewerConfig(
        nightMode: _value == 1,
        swipeHorizontal: _value == 3 || _value == 9,
        autoSpacing: _value == 4 || _value == 9,
        pageFling: _value == 5 || _value == 9,
        pageSnap: _value == 6 || _value == 9,
        enableImmersive: _value == 7,
        autoPlay: _value == 8,
        forceLandscape: _value == 11,
        // videoPages: [
        //   VideoPage.Home(
        //     8,
        //     "assets/${prefix}buck_bunny.mp4",
        //     xorDecryptKey: _value == 10 ? "test" : null,
        //   ),
        //   VideoPage.Home(
        //     9,
        //     "assets/${prefix}buck_bunny.mp4",
        //     xorDecryptKey: _value == 10 ? "test" : null,
        //   ),
        // ],
        xorDecryptKey: _value == 10 ? "test" : null,
//                pages: [1, 5, 9],
//                forceLandscape: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //   String prefix = _value == 10 ? "xor_" : "";
    return Scaffold(body: Center(child: CircularProgressIndicator()));
    //   return Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       // Padding(
    //       //   padding: const EdgeInsets.all(10.0),
    //       //   child: DropdownButton(
    //       //     value: _value,
    //       //     items: widget.items,
    //       //     onChanged: (value) {
    //       //       setState(() {
    //       //         _value = value;
    //       //       });
    //       //     },
    //       //   ),
    //       // ),
    //       RaisedButton(
    //         child: Text("loadAsset()"),
    //         onPressed: () {},
    //       ),
    //     ],
    //   );
  }
}