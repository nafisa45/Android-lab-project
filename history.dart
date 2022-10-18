import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container MyArticles (String hotelname,String hotellocation){
    return Container(
      width: 700,

      child: Card(
        child: Wrap(

          children:<Widget> [
            Align(
                alignment: Alignment.centerLeft,
                child:ListTile(
                  title: Text(hotelname),
                  subtitle: Text(hotellocation),
                ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.favorite_outline_outlined,color: Colors.black,size:25),
            ),

          ],
        ),

      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF000000);
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
         appBar: AppBar(
             backgroundColor: primaryColor,
          title: Text("History",
           style: TextStyle(
            color: Colors.white,
           )
    )
   ),

        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          height: 500,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              MyArticles("Hotel Grand Mahal","Srinagar,India"),
              MyArticles("Skylight Homez","Singapore"),
              MyArticles("The Royal Mount","Dubai"),
              MyArticles("Hotel Niharika","Bangladesh"),
              MyArticles("Hotel Radisson","Bangladesh"),
            ],

          ),
        ),
      ),
    );
  }
}
