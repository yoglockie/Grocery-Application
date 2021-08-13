import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';

class FruitAll extends StatefulWidget {
  const FruitAll({Key? key}) : super(key: key);

  @override
  _FruitAllState createState() => _FruitAllState();
}

class _FruitAllState extends State<FruitAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      "Fruits",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.motorcycle_outlined,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/fruitsad.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/banana.png', '30', 'Banana', Banana()),
                  _buildListItem(
                      context, 'assets/apple.png', '90', 'Apple', Apple()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(context, 'assets/pomegranate.png', '120',
                      'Pomegranate', Pomegranate()),
                  _buildListItem(
                      context, 'assets/grapes.png', '40', 'Grapes', Grapes()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/mango.png', '60', 'Mango', Mango()),
                  _buildListItem(
                      context, 'assets/papaya.png', '80', 'Papaya', Papaya()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/orange.png', '40', 'Orange', Orange()),
                  _buildListItem(
                      context, 'assets/cherry.png', '370', 'Cherry', Cherry()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(context, 'assets/pineapple.png', '70',
                      'Pineapple', Pineapple()),
                  _buildListItem(
                      context, 'assets/kiwi.png', '540', 'Kiwi', Kiwi()),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

_buildListItem(BuildContext context, String imgPath, String price,
    String fruitName, Widget classPath) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => classPath));
    },
    child: Container(
      height: 260,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.black12, width: 1.0),
        right: BorderSide(color: Colors.black12, width: 1.0),
        top: BorderSide(color: Colors.black12, width: 1.0),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(imgPath),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "\u{20B9}$price" + '/Kg',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              fruitName,
              style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            ),
          )
        ],
      ),
    ),
  );
}
