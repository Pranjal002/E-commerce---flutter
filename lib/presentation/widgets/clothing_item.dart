import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ClothingItem extends StatefulWidget {
  const ClothingItem({Key? key}) : super(key: key);

  @override
  State<ClothingItem> createState() => _ClothingItemState();
}

class _ClothingItemState extends State<ClothingItem> {
  List<String> images = [
    'assets/images/saleimage.jpg',
    'assets/images/saleimage1.jpg',
    'assets/images/saleimage2.jpg',
    'assets/images/saleimage4.jpg',
    'assets/images/saleimage5.jpg',
    'assets/images/saleimage6.jpg',
  ];
  int _currentindex = 0;
  Timer? _timer;
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    const duration = Duration(seconds: 5);
    _timer = Timer.periodic(duration, (_) {
      setState(() {
        _currentindex = (_currentindex + 1) % images.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),

        // Text(
        //   "New Basic",
        //   style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.grey,
        //     fontFamily: 'MyCustomFont',
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: Container(
        //     width: 200,
        //     child: Text(
        //       "Please note that if you're specifically looking for Lorem Ipsum text without using the faker package, you can manually assign the Lorem Ipsum text directly as a string in your Flutter code.",
        //       textAlign: TextAlign.left,
        //       overflow: TextOverflow.ellipsis,
        //       maxLines: 4,
        //     ),
        //   ),
        CarouselSlider(
          items: images.map((images) {
            return Image.asset(
              images,
              width: double.infinity,
              fit: BoxFit.cover,
            );
          }).toList(),
          options: CarouselOptions(
            height: 200,
            initialPage: _currentindex,
            enableInfiniteScroll: true,
            autoPlay: true,
            viewportFraction: 1.0,
            onPageChanged: (index,_){
              setState(() {
                _currentindex=index;
              });
            }
          ),
        ),


      ],
    );
  }
}
