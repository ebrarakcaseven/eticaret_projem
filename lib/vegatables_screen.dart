import 'package:flutter/material.dart';
import 'package:proje/nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proje/state/status_service.dart';

class Vegatable extends StatefulWidget {
  const Vegatable({Key? key}) : super(key: key);

  @override
  _VegatableState createState() => _VegatableState();
}

class _VegatableState extends State<Vegatable> {
  StatusService _statusService = StatusService();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 0, left: 5.0),
          child: RawMaterialButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nav()),
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
          stream: _statusService.getVegatable(),
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
                    Future<void> _showChoiseDialog(BuildContext) {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("favorilere eklensin mi?"),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              content: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        FirebaseFirestore firestore =
                                            FirebaseFirestore.instance;
                                        CollectionReference favouriteRef =
                                            FirebaseFirestore.instance
                                                .collection('favourite');
                                        favouriteRef.add({
                                          'name': 'Orange',
                                          'price': '3.99',
                                          'image':
                                              'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Forange.jpg?alt=media&token=df00e6d4-a51a-4768-828a-bece075e3806'
                                        });
                                      },
                                      child: const Text("EVET   /"),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: const Text("   HAYIR"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => _showChoiseDialog(context),
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.brown[100],
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${mypost['name']}",
                                      style: const TextStyle(fontSize: 18)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("${mypost['weight']}",
                                      style: const TextStyle(fontSize: 15)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("${mypost['price']}",
                                      style: const TextStyle(fontSize: 18)),
                                ),
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
