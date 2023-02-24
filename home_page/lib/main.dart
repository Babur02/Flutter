import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {},
            ),
          ],
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Image.network(
                  'https://www.shutterstock.com/image-vector/men-women-shopping-online-on-600w-1293548662.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 05),
              CarouselSlider(
                items: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2017/12/26/09/15/woman-3040029__340.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.network(
                    'https://t3.ftcdn.net/jpg/03/20/68/66/360_F_320686681_Ur6vdYQgDC9WiijiVfxlRyQffxOgfeFz.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.network(
                    'https://media.istockphoto.com/id/1254508881/photo/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-concept.jpg?s=612x612&w=0&k=20&c=wuS3z6nPQkMM3_wIoO67qQXP-hfXkxlBc2sedwh-hxc=',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    // do something on page change
                  },
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Featured Brands',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network(
                      'https://via.placeholder.com/150x100.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Image.network(
                      'https://via.placeholder.com/150x100.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Image.network(
                      'https://via.placeholder.com/150x100.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
