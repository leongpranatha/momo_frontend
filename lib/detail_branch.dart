import 'package:flutter/material.dart';

import 'bandwidth.dart';
import 'chart.dart';
import 'constant.dart';
import 'log.dart';
import 'traffic.dart';

class detailBranch extends StatelessWidget {
  detailBranch({Key? key}) : super(key: key);

  int idx = 0;

  List<Log> logs = [
    Log("BDG", DateTime.now(), true),
    Log("BDG", DateTime.now(), false),
    Log("BDG", DateTime.now(), true),
    Log("BDG", DateTime.now(), false)
  ];
  List<Traffic> traffics = [
    Traffic("kpproxy.intra.bca.co.id", "10.162.31.73", 36, true),
    Traffic("kpproxy.intra.bca.co.id", "10.162.31.73", 36, false),
    Traffic("kpproxy.intra.bca.co.id", "10.162.31.73", 36, true),
    Traffic("kpproxy.intra.bca.co.id", "10.162.31.73", 36, false)
  ];

  List<String> labelsTraffic = [
    "",
    "Source Address",
    "Destination Address",
    "Total (%)"
  ];

  List<Bandwidth> bandwiths = [
    Bandwidth(1, DateTime.now().subtract(Duration(hours: 3))),
    Bandwidth(3, DateTime.now().subtract(Duration(hours: 8))),
    Bandwidth(4.4, DateTime.now().subtract(const Duration(hours: 4))),
    Bandwidth(9, DateTime.now().subtract(Duration(hours: 1))),
    Bandwidth(6, DateTime.now().subtract(Duration(hours: 12))),
    Bandwidth(10, DateTime.now().subtract(Duration(hours: 18))),
    Bandwidth(3, DateTime.now().subtract(Duration(hours: 33))),
  ];
  List<String> labelsLog = ["Interface", "Date", "Time", "Status"];

  createTable(List<String> labels, List<dynamic> data, bool isColumn, context) {
    if (data.isEmpty) return null;
    bool isTraffic = data.first is Traffic;
    return Container(
      height: isColumn ? 20 : 75,
      child: SingleChildScrollView(
        child: DataTable(
          columns: labels
              .map((label) => DataColumn(
                      label: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 10,
                      color: Colors.black,
                    ),
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .subtitle1!
                    //     .copyWith(color: Colors.black, fontSize: 12),
                  )))
              .toList(),
          rows: isTraffic
              ? data
                  .map(
                    (e) => DataRow(cells: [
                      DataCell(
                        Container(
                          height: 20,
                          constraints: const BoxConstraints(
                            minHeight: 10,
                            minWidth: 10,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (e as Traffic).isActive
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          (e).sourceAddress,
                          // style: TextStyle(
                          //   fontFamily: 'roboto',
                          //   fontSize: 10,
                          // ),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 10),
                        ),
                      ),
                      DataCell(
                        Text(
                          (e).destAddress,
                          // style: TextStyle(
                          //   fontFamily: 'roboto',
                          //   fontSize: 10,
                          // ),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 10),
                        ),
                      ),
                      DataCell(
                        Text(
                          "${(e).total.toString()} %",
                          // style: TextStyle(
                          //   fontFamily: 'roboto',
                          //   fontSize: 10,
                          // ),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 10),
                        ),
                      ),
                    ]),
                  )
                  .toList()
              : data
                  .map((e) => DataRow(cells: [
                        DataCell(
                          Text(
                            e.interface,
                            // style: TextStyle(
                            //   fontFamily: 'roboto',
                            //   fontSize: 10,
                            // ),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 10),
                          ),
                        ),
                        DataCell(
                          Text(
                            "${e.date.day}/${e.date.month}/${e.date.year}",
                            // style: TextStyle(
                            //   fontFamily: 'roboto',
                            //   fontSize: 10,
                            // ),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 10),
                          ),
                        ),
                        DataCell(
                          Text(
                            "${e.date.hour.toString()}:${e.date.minute.toString()}",
                            // style: TextStyle(
                            //   fontFamily: 'roboto',
                            //   fontSize: 10,
                            // ),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 10),
                          ),
                        ),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.isUp ? "Up" : "Down",
                              // style: TextStyle(
                              //   fontFamily: 'roboto',
                              //   fontSize: 10,
                              // ),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(fontSize: 10),
                            ),
                            Container(
                              height: 20,
                              constraints: const BoxConstraints(
                                minHeight: 10,
                                minWidth: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: e.isUp ? Colors.green : Colors.red,
                              ),
                            ),
                          ],
                        )),
                      ]))
                  .toList(),
          columnSpacing: 20,
          headingRowHeight: isColumn ? 20 : 0,
          dataRowHeight: isColumn ? 0 : 25,
          dividerThickness: 0,
          headingTextStyle:
              // TextStyle(
              //   fontFamily: 'roboto',
              //   fontSize: 10,
              // ),
              Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 14),
        ),
      ),
    );
  }

  createWholeTable(List<String> labels, List<dynamic> data, context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        createTable(labels, data, true, context),
        createTable(labels, data, false, context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //Bagian header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "DETAIL CABANG",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                //Bagian judul
                Column(
                  children: [
                    Text(
                      "(BLT) BLITAR",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "KCU - WILAYAH 7 - MPLS",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Jl. Campaka No.15, Sukoarjo, Kec. Sukoarjo, Kota Blitar, Jawa Timur 66121",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //Tabs untuk tuker tempat
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Constant.buttonTab("R1", () {}, true),
                    Constant.buttonTab("R2", () {}, false),
                    Constant.buttonTab("Switch Distribution", () {}, false),
                  ],
                ),
                //chart
                Container(
                  height: 300,
                  width: 300,
                  child: Chart(
                    data: bandwiths,
                  ),
                ),
                //tabel (bisa di scroll)
                createWholeTable(labelsTraffic, traffics, context),

                SizedBox(
                  height: 12,
                ),
                // perangkat
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PERANGKAT",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.grey[800]),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cisco Catalyst 2980X-240TE",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              "switch.jpg",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),

                //log (bisa di scroll)
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LOG",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.grey[800])),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          createWholeTable(labelsLog, logs, context),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
