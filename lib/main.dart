import 'package:flutter/material.dart';
import 'package:recipe/recipe_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        Recipe.routeName: (ctx) => Recipe(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 17,
                          child: Image.asset(
                            './images/menu.png',
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 27,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Morning Jolie !!',
                              style: TextStyle(
                                fontFamily: 'Sofia Pro',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF993825),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'What do you want to eat?!',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sebino',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 12,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            maxRadius: 25,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                    'https://randomuser.me/api/portraits/women/82.jpg',
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFBD084)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Search Recipes',
                              style: TextStyle(
                                color: Colors.white.withOpacity(.65),
                              
                                fontFamily: 'Sebino',
                              ),
                            ),
                            Icon(Icons.search, color: Colors.white.withOpacity(.65),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color(0xFFf8b53f)),
          ),
          Flexible(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Recent Recipes',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Sebino',
                          color: Color(0xFF993825),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 225,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(Recipe.routeName),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    height: 180,
                                    child: Card(
                                      elevation: 6,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(19)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(19),
                                        child: Image.network(
                                            'https://www.mybakingaddiction.com/wp-content/uploads/2016/02/Ritz-Cracker-Chicken-1-of-16_resized.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Chicken Cracker',
                                    
                                    style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(19),
                                      child: Image.network(
                                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-homemade-pizza-horizontal-1542312378.png',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Homemade Pizza',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(19),
                                      child: Image.network(
                                          'https://cdn.apartmenttherapy.info/image/upload/v1569614568/k/Photo/Recipes/2019-10-recipe-20-minute-cajun-chicken-pasta/20-Minute-Cajun-Chicken-Pasta_018.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Cajun Chicken Pasta',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Sebino',
                          color: Color(0xFF993825),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  height: 100,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(13),
                                      child: Image.network(
                                          'https://www.onceuponachef.com/images/2019/07/Big-Italian-Salad-760x983.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Salads',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  height: 100,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(13),
                                      child: Image.network(
                                          'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2017/06/600-calorie-meal-collection-main-image.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Meals',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  height: 100,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(13),
                                      child: Image.network(
                                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-fruit-desserts-1558040489.jpg?crop=0.670xw:1.00xh;0.231xw,0&resize=640:*',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Desserts',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Quick Recipes',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Sebino',
                          color: Color(0xFF993825),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 225,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(19),
                                      child: Image.network(
                                          'https://www.cscassets.com/recipes/wide_cknew/wide_24738.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Quick Quesadillas',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(19),
                                      child: Image.network(
                                          'https://mommyshomecooking.com/wp-content/uploads/2018/03/Easy-Whole-30-Chicken-and-Asparagus-Skillet-1.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Chiken & Asparagus',
                                  style: TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  child: Card(
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(19),
                                      child: Image.network(
                                          'https://www.acouplecooks.com/wp-content/uploads/2019/08/Egg-Tacos-010-735x919.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Egg Tacos',
                                  style:TextStyle(
                                      color: Color(0xFF545050),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
