import 'package:apps/DNS/Dns-%20verifie.dart';
import 'package:apps/drawer/drawer.dart';
import 'package:apps/home%20screens/stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:apps/verify_phone/verify number.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      Country? _selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[_header(), _prevention(), _banner()],
      ),
      bottomNavigationBar: _bottomNavigation(),
      drawer: drawer(),
    );
  }

  Widget _bottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 70.0,
            decoration: BoxDecoration(
                color: Color(0XFF4C79FF),
                borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),


          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.insert_chart,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => StatsScreen()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.phone_android,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Homescreen()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.dns_rounded,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Homescree()));
            },
          ),

        ],
      ),
    );
  }

  Widget _banner() {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      height: 140.0,
      child: Stack(children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0),
            height: 110,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0XFFAEA1E5), Color(0XFF56549E)]),
                borderRadius: BorderRadius.circular(18.0)),
            child: Container(
              margin: EdgeInsets.only(left: 130.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 15.0, bottom: 5.0),
                      child: Text("Do your own test",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 20.0),
                      child: Text(
                        "Follow the instructions to do your own test.",
                        style: TextStyle(
                            fontSize: 16.0, height: 1.3, color: Colors.white),
                      ),
                    )
                  ]),
            )),
        Positioned(
          child: Image(
            image: AssetImage("assets/lady.png"),
            height: 120.0,
          ),
          bottom: 20.0,
          left: 20.0,
        )
      ]),
    );
  }

  Widget _prevention() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Prevention",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/prevention1.png"),
                      height: 80.0,
                      width: 80.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Avoid close\n contact',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/prevention2.png"),
                      height: 80.0,
                      width: 80.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Clean your\n hands often',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/prevention3.png"),
                      height: 80.0,
                      width: 80.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Wear a \n facemask',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0),
                    )
                  ],
                ))
          ],
        )
      ],
    );
  }

   Widget _header() {
     return Container(
       height: 250.0,
       padding: EdgeInsets.symmetric(horizontal: 30.0),
       decoration: BoxDecoration(
         color: Colors.deepPurpleAccent,
         borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(40),
           bottomRight: Radius.circular(40),
         ),
       ),
       child: Column(
         children: [
           Padding(
             padding: EdgeInsets.only(top: 20.0, bottom: 25.0),
             child: Row(
               children: [
                 Text(
                   'covid-19',
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 35.0,
                       fontWeight: FontWeight.bold),
                 ),
                 SizedBox(width: 10.0,),
                 Container(
                   height: 50.0,
                   width: 200,
                   padding: EdgeInsets.symmetric(horizontal: 10.0),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20.0)),
                   child: Center(
                     child: GestureDetector(
                       onTap: () {
                         showCountryPicker(
                           context: context,
                           onSelect: (Country country) {
                             setState(() {
                               _selectedCountry = country;
                             });
                           },
                         );
                       },
                       child: Text(
                         _selectedCountry?.name ?? 'Select Country',
                         style: TextStyle(color: Colors.black),
                       ),
                     ),
                   ),
                 ),

         ],
       ),

              ),
           Padding(
               padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10.0),
                   child: Text(
                       "If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.",
                       style: TextStyle(
                           fontSize: 15.0, color: Colors.white, height: 1.5)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       ElevatedButton.icon(
                           style: ElevatedButton.styleFrom(
                             padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                             backgroundColor: Color(0xFFFF4D58),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30.0)),
                           ),
                           label: Text(
                             "Call Now",
                             style: TextStyle(color: Colors.white),
                           ),
                           onPressed: () {},
                           icon: Icon(
                             Icons.phone,
                             color: Colors.white,
                           )),
                       ElevatedButton.icon(
                           style: ElevatedButton.styleFrom(
                             padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                             backgroundColor: Color(0xFF4D79FF),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30.0)),
                           ),
                           label: Text(
                             "Send SMS",
                             style: TextStyle(color: Colors.white),
                           ),
                           onPressed: () {

                           },
                           icon: Icon(
                             Icons.chat_bubble,
                             color: Colors.white,
                           ))

                     ],
                   ),
                 ),
               ],
             ),
           )
         ]
           ),

     );
   }
}
