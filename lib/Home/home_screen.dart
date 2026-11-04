import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    List listfile= [
      "https://mitchyh.com/images/posts/i-was-wrong-about-flutter-banner.png",
      'https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fi%2Fw605r3q5eduhw5tqly08.png',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYPp8yNFFemJUG7IRBMFiPBg1rkubo1ttuRutORoJilkg-nAK2MFO5SnA&s=10',

    ];
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

            SizedBox(height: 16),
            //<------------------------ slider ------------------------------>
            CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),),
              items: listfile.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            //<-------------catagory----------------->
            SingleChildScrollView(
              padding: EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, ((index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.eighteen_up_rating,
                          color: Colors.red,
                          size: 18,),
                        SizedBox(width: 2,),
                        Text('Flutter Banner',style: TextStyle(
                          color: Color(0xff31276A),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        )
                      ],
                    ),
                  );
                }))


              ),
            )
          ],
        ),
      ),
    );
  }
}
