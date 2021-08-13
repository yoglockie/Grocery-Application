import 'package:flutter/material.dart';

class SpicesAll extends StatefulWidget {
  const SpicesAll({Key? key}) : super(key: key);

  @override
  _SpicesAllState createState() => _SpicesAllState();
}

class _SpicesAllState extends State<SpicesAll> {
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
                      "Spices",
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
                      image: AssetImage("assets/spicesad.png"),
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
                  _buildListItem(context, 'assets/garlic.png', '70', 'Garlic'),
                  _buildListItem(
                      context, 'assets/turmeric.png', '30', 'Turmeric'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(context, 'assets/chilli.png', '20', 'Chilli'),
                  _buildListItem(
                      context, 'assets/cuminseeds.png', '40', 'Cumin Seeds'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/coriander.png', '15', 'Coriander'),
                  _buildListItem(
                      context, 'assets/blackpepper.png', '40', 'Black Pepper'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/cinnamon.png', '35', 'Cinnamom'),
                  _buildListItem(
                      context, 'assets/cardamom.png', '80', 'Cardamom'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/saffron.png', '30', 'Saffron'),
                  _buildListItem(context, 'assets/clove.png', '40', 'Clove'),
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

_buildListItem(
    BuildContext context, String imgPath, String price, String fruitName) {
  return Container(
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
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
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
  );
}
