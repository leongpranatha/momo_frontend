import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/region.dart';

class ListData {
  String inisial;
  String namacabang;
  String status;
  String provider;

  ListData(
      {required this.inisial,
      required this.namacabang,
      required this.status,
      required this.provider});
}

var listData = <ListData>[
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
  ListData(
      inisial: "BDG",
      namacabang: "KCU Bandung",
      status: "KCU",
      provider: "Primacom"),
];

class List_Data extends StatelessWidget {
  const List_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              icon: Icon(
                Icons.circle,
                color: Colors.lightBlue,
              ),
              hintText: "Search",
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey[700],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    "Inisial",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Nama Cabang",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Status",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Provider",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
              rows: listData
                  .map(
                    (name) => DataRow(
                      cells: [
                        DataCell(
                          Text(
                            name.inisial,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            name.namacabang,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            name.status,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            name.provider,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.stacked_bar_chart,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => List_Data()));
                },
                icon: Icon(
                  Icons.folder_shared_sharp,
                  size: 40,
                  color: Colors.lightBlue,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Region()));
                },
                icon: Icon(
                  Icons.apartment,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.article,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
