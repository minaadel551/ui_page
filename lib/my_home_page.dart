import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                // circleAvatar & name & data
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                    ),
                    SizedBox(width:10,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend Name',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 17),),
                        Row(
                          children: [
                            Text('Today at 19:33',style: TextStyle(color: Colors.grey,)),
                             SizedBox(width:10,),
                             FaIcon(FontAwesomeIcons.globeAfrica,color: Colors.grey,size: 18,)
                          ],
                        ),

                      ],
                    ),
                    Spacer(),
                    FaIcon(FontAwesomeIcons.ellipsisH,size: 18,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 15,),
                Text('I want this mockup so bad!! ',style: TextStyle(fontSize: 18),),
                SizedBox(height: 8,),
                // text and link
                Row(
                  children: [
                    Text('Found it at ',style: TextStyle(fontSize: 18),),
                    Text('http://marinad.com.ar',style: TextStyle(color: Colors.blue,fontSize: 18),),
                  ],
                ),
                SizedBox(height: 10,),
                Text('See translation',style: TextStyle(color: Colors.blue,fontSize: 17),),
                SizedBox(height: 15,),
                // empty blue container
                Container(
                  width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.55,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Colors.blue,
                       Colors.blue.withOpacity(0.5)
                     ],begin: Alignment.topLeft,
                     end: Alignment.bottomRight
                   )
                 ),
                ),
                SizedBox(height: 10,),
                // 3 buttons like &share & comment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      label: Text('like'),
                      icon: FaIcon(FontAwesomeIcons.thumbsUp,color: Colors.grey,size: 17,) ,
                    ),
                    TextButton.icon(
                      label: Text('Comment'),
                      icon: FaIcon(FontAwesomeIcons.commentAlt,color: Colors.grey,size: 17,) ,
                    ),
                    TextButton.icon(
                      label: Text('Share'),
                      icon: FaIcon(FontAwesomeIcons.share,color: Colors.grey,size: 17,) ,
                    ),
                  ],
                ),
                Divider(),

                // emoji and text
                Container(
                  height: 30,
                  child: Row(
                    children: [
                     Image.asset('images/emoji.png',width: 100,),
                      SizedBox(width:10,),
                      Text('1035',style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius:20,
                    ),
                    SizedBox(width:10,),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.793,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.emoji_emotions_outlined),
                                SizedBox(width: 5,),
                                Icon(Icons.camera_alt_outlined),
                                SizedBox(width: 5,),
                                Icon(Icons.gif),
                                SizedBox(width: 5,),
                                Icon(Icons.note_outlined),
                                SizedBox(width: 5,)
                              ],
                            ),
                          ),
                            hintText: 'Write something..',
                            contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)
                            )
                        ),
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }



}

