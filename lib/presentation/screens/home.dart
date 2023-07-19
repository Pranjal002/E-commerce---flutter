import 'package:ecommerce/Domain/model/clothes_model.dart';
import 'package:ecommerce/data/repository/collection_repository_impl.dart';
import 'package:ecommerce/presentation/widgets/clothing_item.dart';
import 'package:ecommerce/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CollectionRepositoryImpl collectionRepositoryImpl = CollectionRepositoryImpl();
  late Future<List<ClothesModel>> _clothesDataFuture;
  @override
  void initState(){
    super.initState();
    _clothesDataFuture =collectionRepositoryImpl.getApi();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ClothesModel>>(
        future: _clothesDataFuture,
        builder: (BuildContext context, AsyncSnapshot<List<ClothesModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('sudip: ${snapshot.error}');
          } else if (snapshot.hasData) {
            var items = snapshot.hasData as  List<ClothesModel>;





            //-----------------

            // Display the fetched data in your UI
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.search_outlined, color: Colors.teal),
                        SizedBox(width: 20),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.teal, width: 1.5),
                                  borderRadius: BorderRadius.circular(20)),
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: Colors.teal,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: Colors.teal, // Set the color of the line
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                    child: Text(
                                      'Filter',
                                      style: TextStyle(color: Colors.teal),
                                    ))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'T-shirt',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Women',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Jackets',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Blazers',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Kids',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Pants',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Men',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 1.8,
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                    'Sales',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.more_horiz_sharp,
                            color: Colors.teal,
                          ),
                        ],
                      ),
                    ),
                    ClothingItem(),
                    SizedBox(
                      height: 20,
                    ),
                    ProductItem(title: items[0].title.toString(), descrip: items[0].description.toString()),
                  ],
                ),
              ),
            );
          } else {
            return Text('No data available');
          }
        },
      )
    );
  }
}
