import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://i.pinimg.com/originals/23/96/0f/23960fc483ef02369c0d951e10e69a7c.jpg"),

            ),
            SizedBox(width: 15.0,),
            Text("Chats" , style: TextStyle(color: Colors.black),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){} ,icon:CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(Icons.camera, size: 16.0,color: Colors.white,
              ))),
          IconButton(onPressed: (){} ,icon:CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(Icons.edit, size: 16.0,color: Colors.white,
              )))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: 
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(10),


                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15.0,),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(
                  height:20.0),
              Container(
                height: 105,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:
                        (context , index) =>  buildStoryItem(),
                  separatorBuilder:
                  (context , index) => SizedBox(width: 20.0,),
                  itemCount: 20,
                ),
              ),
              SizedBox(
                  height:40.0),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                  itemBuilder:
                  (context , index) =>buildchatItem() ,
                  separatorBuilder:
                  (context , index) => SizedBox(height: 20,),
                  itemCount: 20)




            ],
          ),
        ),
      ),
    );
  }
}


Widget buildchatItem()  => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage("https://www.shortlist.com/media/images/2019/05/50-most-evil-movie-lines-2-1556677429-qUns-column-width-inline.jpg"),

        ),
        // CircleAvatar(
        //   radius: 9.0,
        //   backgroundColor: Colors.white,
        // ),
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 3.0 , end: 3.0),
          child: CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ),

      ],
    ),
    SizedBox(width: 20.0,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ahmed Gamal",
            style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Hello My name is Ahmed Gamal am bron on cairo i live now on slam city",
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis ,
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Text(
                  "02:00 Pm"
              ),

            ],
          )
        ],
      ),
    )
  ],
);
Widget buildStoryItem() => Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage("https://www.looper.com/img/gallery/movie-characters-who-arent-as-dead-as-you-think/intro-1554330089.jpg"),

          ),
          // CircleAvatar(
          //   radius: 9.0,
          //   backgroundColor: Colors.white,
          // ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 3.0 , end: 3.0),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(height: 6.0,),
      Text("Mohamed Gamal Mohamed ismaiel" , maxLines: 2, overflow: TextOverflow.ellipsis,)
    ],
  ),
);