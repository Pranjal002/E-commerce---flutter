import 'package:ecommerce/presentation/screens/cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedProduct extends StatefulWidget {
  const DetailedProduct({Key? key}) : super(key: key);

  @override
  State<DetailedProduct> createState() => _DetailedProductState();
}

class _DetailedProductState extends State<DetailedProduct> {
  int _currentIndex = 0;

  String _selectedSize = 'Medium';
  int _count = 0;

  void _handleSizeChanged(String size) {
    setState(() {
      _selectedSize = size;
    });
  }

  void _increaseCount() {
    setState(() {
      _count++;
    });
  }

  void _decreaseCount() {
    setState(() {
      if (_count <= 0) {
        _count = 0;
      } else {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.teal,
        // shape:  ContinuousRectangleBorder(
        //   side: BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(10)
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('PRICE:\$30',style: TextStyle(fontSize: 22,color: Colors.white),),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
            }, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,)),


          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => CartPage()));
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_cart_outlined), label: 'Home'),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/item.jpg', width: double.infinity),
            Container(
              width: 380,
              height: 380,
              child: Card(
                color: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mens Casual Premium Slim Fit T-Shirts',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Price : \$35",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizeRadioGroup(
                        selectedSize: _selectedSize,
                        onChanged: _handleSizeChanged,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  onPrimary: Colors.white,
                                  shape: CircleBorder(),
                                  fixedSize: Size(10, 10)),
                              onPressed: _decreaseCount,
                              child: Icon(CupertinoIcons.minus)),
                          Text('${_count}'),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  onPrimary: Colors.white,
                                  shape: CircleBorder(),
                                  fixedSize: Size(10, 10)),
                              onPressed: _increaseCount,
                              child: Icon(CupertinoIcons.add)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}

class SizeRadioGroup extends StatelessWidget {
  final String selectedSize;
  final ValueChanged<String> onChanged;

  const SizeRadioGroup({
    required this.selectedSize,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildSizeRadio('Medium'),
        buildSizeRadio('Large'),
        buildSizeRadio('XL'),
      ],
    );
  }

  Widget buildSizeRadio(String size) {
    return Row(
      children: [
        Radio<String>(
          value: size,
          groupValue: selectedSize,
          onChanged: (newValue) => onChanged(newValue!),
        ),
        Text(size),
      ],
    );
  }
}
