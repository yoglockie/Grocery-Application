import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';

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
                  _buildListItem(context, 'assets/broccoli.png', '70',
                      'Broccoli', Broccoli()),
                  _buildListItem(context, 'assets/cauliflower.png', '30',
                      'Cauliflower', Cauliflower()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/tomato.png', '20', 'Tomato', Tomato()),
                  _buildListItem(
                      context, 'assets/onion.png', '40', 'Onion', Onion()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/potato.png', '15', 'Potato', Potato()),
                  _buildListItem(context, 'assets/pea.png', '40', 'Pea', Pea()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(context, 'assets/egglant.png', '35', 'Egglant',
                      Egglant()),
                  _buildListItem(context, 'assets/bellpepper.png', '80',
                      'Bell Pepper', BellPepper()),
                ],
              ),
            ),
            Container(
              height: 261,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/carrot.png', '30', 'Carrot', Carrot()),
                  _buildListItem(context, 'assets/cucumber.png', '40',
                      'Cucumber', Cucumber()),
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
    String itemName, Widget classPath) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => classPath));
    },
    child: Container(
      height: 261,
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
              itemName,
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
