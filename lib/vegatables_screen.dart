import 'package:flutter/material.dart';
import 'package:proje/nav.dart';

class Vegatable extends StatelessWidget {
  const Vegatable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 6.0),
          child: RawMaterialButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Nav()),
            ),
            elevation: 2.0,
            fillColor: Colors.green,
            child: const Icon(Icons.keyboard_arrow_left),
            padding: const EdgeInsets.all(10.0),
            shape: const CircleBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Vegatables & Fruits",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "                      ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search your product",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://sc04.alicdn.com/kf/U3f818dc61b164bd3996575580efd2b4b6.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Text(
                                  "Orange",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "3.990€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          // color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://static.libertyprim.com/files/familles/banane-large.jpg?1569271725'),
                                    width: 100,
                                  ),*/
                                ),
                                const Text(
                                  "Banana",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "5.00€",
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 30.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://www.eatthis.com/wp-content/uploads/sites/4/2019/09/green-grapes-bunch.jpg?quality=82&strip=all'),
                                    width: 80,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    "grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //  color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Text(
                                  "pineapple",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 37.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image.asset('asset/image/orange.jpg'),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 15.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://iasbh.tmgrup.com.tr/4ec83a/650/344/0/21/724/401?u=https://isbh.tmgrup.com.tr/sbh/2021/09/21/ruyada-elma-toplamak-ne-anlama-gelir-ruyada-agactan-kirmizi-ve-yesil-elma-toplamak-ne-demek-1632220900266.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Apple",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "3.990€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          // color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://d384u2mq2suvbq.cloudfront.net/public/spree/products/2135/original/watermelon-fragrance-oil-web.jpg?1608324953'),
                                    width: 100,
                                  ),*/
                                ),
                                const Text(
                                  "watermelon",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "5.00€",
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 15.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://st2.myideasoft.com/shop/ir/87/myassets/products/904/pr_01_904.jpg?revision=1570200761'),
                                    width: 80,
                                  ),*/
                                ),
                                const Text(
                                  "carrot",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //  color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 10.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-11vyj9efsoDb6S8V5JAHahd8Fr5qeZwPpA&usqp=CAU'),
                                    width: 70,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "lettuce",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 19.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
