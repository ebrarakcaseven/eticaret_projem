import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proje/nav.dart';
import 'package:proje/state/status_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  // ignore: prefer_final_fields, unused_field
  StatusService _statusService = StatusService();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text(
            "CART",
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
      body: StreamBuilder<QuerySnapshot>(
          stream: _statusService.getSepet(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text(
                'Loading...',
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot mypost = snapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.brown[100],
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    backgroundImage: mypost['image'] == ""
                                        ? const NetworkImage(
                                            "https://www.gentas.com.tr/wp-content/uploads/2021/05/3190-siyah_renk_g483_1250x1000_t3cksofn.jpg")
                                        : NetworkImage(mypost['image']),
                                    radius: size.height * 0.08,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 40.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("${mypost['name']}",
                                            style:
                                                const TextStyle(fontSize: 22)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("${mypost['price']}",
                                            style:
                                                const TextStyle(fontSize: 22)),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 95.0),
                                  child: InkWell(child: Icon(Icons.delete)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
