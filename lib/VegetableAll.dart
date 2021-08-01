import 'package:flutter/material.dart';

class VegetableAll extends StatefulWidget {
  const VegetableAll({Key? key}) : super(key: key);

  @override
  _VegetableAllState createState() => _VegetableAllState();
}

class _VegetableAllState extends State<VegetableAll> {
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
                      "Vegetables",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.blue,
                        size: 35.0,
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
                      image: AssetImage("assets/vegetablead.png"),
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
                  _buildListItem('assets/broccoli.png', '70', 'Broccoli'),
                  _buildListItem('assets/cauliflower.png', '30', 'Cauliflower'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem('assets/tomato.png', '20', 'Tomato'),
                  _buildListItem('assets/onion.png', '40', 'Onion'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem('assets/potato.png', '15', 'Potato'),
                  _buildListItem('assets/pea.png', '40', 'Pea'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem('assets/egglant.png', '35', 'Egglant'),
                  _buildListItem('assets/bellpepper.png', '80', 'Bell Pepper'),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem('assets/carrot.png', '30', 'Carrot'),
                  _buildListItem('assets/cucumber.png', '40', 'Cucumber'),
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

_buildListItem(String imgPath, String price, String fruitName) {
  return Container(
    height: 260,
    width: 205,
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
