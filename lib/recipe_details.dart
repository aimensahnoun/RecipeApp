import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  static String routeName = '/Recipe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 5000,
          ),
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
                'https://www.mybakingaddiction.com/wp-content/uploads/2016/02/Ritz-Cracker-Chicken-1-of-16_resized.jpg',
                fit: BoxFit.cover),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 800,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Chicken Cracker',
                          style: TextStyle(
                              fontFamily: 'Sofia Pro',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF545050)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.timer,
                                  color: Color(0xFFFFC661)
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '45',
                                      style: TextStyle(
                                          color: Color(0xFFFFCC75),
                                          fontFamily: 'Sebino',
                                          
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                        fontFamily: 'Sebino',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xFF545050),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  color: Color(0xFFFFC661),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: Color(0xFFFFCC75),
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      'rate',
                                      style: TextStyle(
                                          fontFamily: 'Sebino',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xFF545050)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.group,
                                  color: Color(0xFFFFC661),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '1-2',
                                      style: TextStyle(
                                          color: Color(0xFFFFCC75),
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      'per',
                                      style: TextStyle(
                                          fontFamily: 'Sebino',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xFF545050)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 45),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Ingrediants',
                                  style: TextStyle(
                                      color: Color(0xFFFB5233),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 100,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadiusDirectional.circular(20),
                                    color:Color(0xFFFB5233)
                                  ),
                                  child: Divider(

                                  ),
                                  
                                )
                              ],
                            ),
                            Text(
                              'Step By Step',
                              style: TextStyle(
                                  color: Color(0xFF6d6a6a),
                                  fontFamily: 'Sofia Pro',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'Tools',
                              style: TextStyle(
                                  color: Color(0xFF6d6a6a),
                                  fontFamily: 'Sofia Pro',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Flexible(
                          child: ListView(
                            children: <Widget>[
                              Container(
                                width: 400,
                                height: 80,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(7)),
                                  elevation: 5,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                         decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            boxShadow: [
                                              new BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.5),
                                                  offset: Offset.zero,
                                                  
                                                  blurRadius: 10
                                                  )
                                            ]),
                                        width: 80,
                                        height: 80,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(7),
                                          child: Image.network(
                                              'https://cdn.shopify.com/s/files/1/0087/9837/1899/products/breast_4cf5c683-ff82-4dd7-8436-c31961118160_1024x.jpg?v=1547929084',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 17,
                                      ),
                                      Text(
                                        '1 lbs Chicken breast, chopped \nin bite size pieces',
                                        style: TextStyle(
                                            color: Color(0xFF545050),
                                            fontFamily: 'Sofia Pro Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 400,
                                height: 80,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(7)),
                                  elevation: 5,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                         decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            boxShadow: [
                                              new BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.5),
                                                  offset: Offset.zero,
                                                  
                                                  blurRadius: 5
                                                  )
                                            ]),
                                        width: 80,
                                        height: 80,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(7),
                                          child: Image.network(
                                              'https://5.imimg.com/data5/JQ/GN/MY-38314682/large-yellow-onion-500x500.jpg',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 17,
                                      ),
                                      Text(
                                        '1/2 Yellow onion chopped',
                                        style: TextStyle(
                                            color: Color(0xFF545050),
                                            fontFamily: 'Sofia Pro Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 400,
                                height: 80,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15)),
                                  elevation: 5,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            boxShadow: [
                                              new BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.5),
                                                  offset: Offset.zero,
                                                  
                                                  blurRadius: 5
                                                  )
                                            ]),
                                        width: 80,
                                        height: 80,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          child: Image.network(
                                              'http://cdn.shopify.com/s/files/1/1481/9186/products/Crushed-Red-Chilies-1_3be7d1bd-addb-4134-bcb0-6cb4044125e8_grande.jpg?v=1532988275',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 17,
                                      ),
                                      Text(
                                        '1 tsp Crushed red pepper',
                                        style: TextStyle(
                                            color: Color(0xFF545050),
                                            fontFamily: 'Sofia Pro Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFF545050),
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
