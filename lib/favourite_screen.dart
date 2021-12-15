import 'package:flutter/rendering.dart';
import 'package:proje/nav.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proje/state/status_service.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  // ignore: prefer_final_fields
  StatusService _statusService = StatusService();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Text("FAVORİLERİM",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.green)),
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
          stream: _statusService.getFavourite(),
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
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    Future<void> _showChoiseDialog(BuildContext) {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                  "ürünü silmek istediğinize emin misiniz?"),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              // ignore: avoid_unnecessary_containers
                              content: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () => _statusService
                                          .removeStatus(mypost.id)
                                          .then((value) =>
                                              Navigator.pop(context)),
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
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 12.0, right: 12.0),
                      child: Container(
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.brown[50],
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, right: 15.0),
                                child: InkWell(
                                    onTap: () => _showChoiseDialog(context),
                                    child: const Icon(Icons.delete)),
                              ),
                              Row(
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
                                        top: 20.0, left: 40.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("${mypost['name']}",
                                              style: const TextStyle(
                                                  fontSize: 22)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("${mypost['price']}",
                                              style: const TextStyle(
                                                  fontSize: 22)),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.green,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          height: 40,
                                          width: 150,
                                          // ignore: deprecated_member_use
                                          child: FlatButton(
                                              onPressed: () {},
                                              child: const Text(
                                                " Sepete Ekle ",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.green),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
