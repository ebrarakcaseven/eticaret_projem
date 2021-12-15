import 'package:proje/dairy_screen.dart';
import 'package:proje/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:proje/vegatables_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  //bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 65.0),
          child: Text(
            "Categories",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 0, left: 5.0),
          child: RawMaterialButton(
            onPressed: () {},
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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
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
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Daily needs",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Product()),
                      ),
                      child: const Text(
                        "see all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
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
                          height: 190,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://www.bestfreshfruits.com/wp-content/uploads/2015/09/frutas_7.png'),
                                    width: 100,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Vegatable()),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Vegatables & Fruits",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        //backgroundColor: Colors.black,
                                        fontSize: 18,
                                      ),
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
                            left: 0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 190,
                          width: 180,
                          // color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0, left: 20.0, right: 20.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://media.mehrnews.com/d/2020/02/04/4/3371550.jpg'),
                                    width: 150,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dairy()),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Dairy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        //backgroundColor: Colors.black,
                                        fontSize: 18,
                                      ),
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
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Easy Cooking",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      );
                    }),
                  ],
                ),
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
                          height: 190,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 30.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/05/29/16/vegetarian-cookbooks.jpg?width=982&height=726&auto=webp&quality=75'),
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Cooking",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 18,
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
                            left: 0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 190,
                          width: 180,
                          // color: Colors.black,
                          child: Center(
                            child: Column(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 2.0, right: 2.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://st2.depositphotos.com/1001069/12106/i/600/depositphotos_121063832-stock-photo-sausages-fish-and-meat-cooking.jpg'),
                                    width: 120,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Meat & Fish",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 18,
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
