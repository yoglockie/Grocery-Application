import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';

class MoreAll extends StatefulWidget {
  const MoreAll({Key? key}) : super(key: key);

  @override
  _MoreAllState createState() => _MoreAllState();
}

class _MoreAllState extends State<MoreAll> {
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
                      "Other",
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
                      image: AssetImage("assets/moread.png"),
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
                      context, 'assets/oils.png', '165', 'Oil', Oils()),
                  _buildListItem(
                      context, 'assets/snacks.png', '20', 'Snacks', Snacks()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/flour.png', '35', 'Flour', Flour()),
                  _buildListItem(
                      context, 'assets/dairy.png', '30', 'Milk', Dairy()),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  _buildListItem(
                      context, 'assets/souces.png', '30', 'Souce', Souce()),
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
                itemName,
                style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            )
          ],
        ),
      ));
}
