import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../winget/Card_view_screen.dart';
import '../winget/Item_card_screen.dart';
import '../winget/catagory_card.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  List<Map<String, dynamic>>catagory=[
    {
      'caname':'Aesthetics',
      'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/refs/heads/main/assets/icons/icons.png',
    },
    {
      'caname':'Cuisine & Pastry',
      'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/refs/heads/main/assets/icons/3f5a66ad63192aa66ca56984f23365dc3938d2b0.png',
    },
    {
      'caname':'Fashions',
      'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/71455410a1b6cba03f683697fbe48ecb3f9079bf/assets/icons/3ee9142fa530490da93ebd7ee18ed0a9cf51986b.png',
    },
  ];
   List<Map<String, dynamic>>ItemCard=[
     {
       'caname':'Wedding',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/icons/Wedding.png',
     },
     {
       'caname':'Birthday',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/icons/Birthday.png',
     },
     {
       'caname':'Baby Shower',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/icons/Baby%20Shower.png',
     },
   ];
   List<Map<String, dynamic>>CardView=[
     {
       'tile':'I will Singing all types of Songs',
        'price':'\$100',
       'rating':'4.5 (120+ Ratings)',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/image/skin.png',
     },
     {
       'tile':'Birthday',
       'price':'\$100',
       'rating':'4.5 (120+ Ratings)',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/image/social.png',
     },
     {
       'tile':'Baby Shower',
       'price':'\$100',
       'rating':'4.5 (120+ Ratings)',
       'image':'https://raw.githubusercontent.com/rafsanrakibdskm75/Bdcaling-project/main/assets/image/music.jpg',
     },
   ];
   List<Map<String, dynamic>> listfile = [
     {
       'image': 'https://mitchyh.com/images/posts/i-was-wrong-about-flutter-banner.png',
       'title': 'Welcome to Our App',
       'subtitle': 'Find Your Best Services Here',
     },
     {
       'image': 'https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fi%2Fw605r3q5eduhw5tqly08.png',
       'title': 'Discover New Services',
       'subtitle': 'Explore Our Categories',
     },
     {
       'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYPp8yNFFemJUG7IRBMFiPBg1rkubo1ttuRutORoJilkg-nAK2MFO5SnA&s=10',
       'title': 'Book Your Service',
       'subtitle': 'Make Your Moments Special',
     },
   ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            //<---------------------- Profile ---------------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //<-------------- Image ----------------------->
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Color(0xff6C57EC)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 16),
                    //<-------------------- Name ------------------------>
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: TextStyle(
                            color: Color(0xff919191),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),

                        Text(
                          'Md Nahidul Islam',
                          style: TextStyle(
                            color: Color(0xff31276A),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    //<-------------------- Notification ---------------------->
                    Icon(
                      Icons.notification_add,
                      color: Color(0xff6C6C6C),
                      size: 18,
                    ),
                    SizedBox(width: 16),
                    //<-------------------- Menu ---------------------->
                    Icon(Icons.menu, color: Color(0xff6C6C6C), size: 18),
                  ],
                ),
              ],
            ),

            SizedBox(height: 16),

            //<-------------------------- search ------------------------>
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: false,
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.text,
                    autofocus: true,
                    maxLines: 1,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.eighteen_mp),
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Search",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: TextStyle(color: Colors.red, fontSize: 16),
                    controller: TextEditingController(),
                  ),
                ),
                Icon(Icons.filter_alt),
              ],
            ),

            SizedBox(height:16,),
            //<------------------------ slider ------------------------------>
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 1,
              ),

              items: listfile.map((item) {

                return Builder(
                  builder: (BuildContext context) {

                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        child: Stack(
                          fit: StackFit.expand,

                          children: [

                            // Step 1: Background Image
                            Image.network(
                              item['image'],
                              fit: BoxFit.cover,
                            ),

                            // Step 2: Dark Overlay
                            Container(
                              color: Colors.black.withOpacity(0.3),
                            ),

                            // Step 3: Custom Text
                            Positioned(
                              left: 20,
                              bottom: 25,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [

                                  Text(
                                    item['title'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 5),

                                  Text(
                                    item['subtitle'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                );

              }).toList(),
            ),
            //<-------------catagory----------------->
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Catagory',
                  style: TextStyle(
                    color: Color(0xff31276A),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),

              ],
            ),
            SizedBox(height: 16),

            SingleChildScrollView(
              padding: EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(catagory.length, ((index) {
                  return CatagoryCard(catagory: catagory[index]);
                }))
              ),
            ),
            //<------------------------ Item ------------------------------>
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              child: Row(
                children: List.generate(ItemCard.length, ((index) {
                  return ItemCard_screen(ItemCard: ItemCard[index]);
                })))
              ),
            //<------------------------ CardView ------------------------------>
            SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                //<----------------Product/Service Card UI--------------->
              children: List.generate(CardView.length,((index) {
                return CardViewScreen(CardView: CardView[index]);
              })))
            ),
          ],
        ),
      ),
    );
  }
}
