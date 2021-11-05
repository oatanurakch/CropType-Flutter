import 'package:flutter/material.dart';

class ChooseCropType extends StatefulWidget {
  const ChooseCropType({Key? key}) : super(key: key);

  @override
  _ChooseCropTypeState createState() => _ChooseCropTypeState();
}

class _ChooseCropTypeState extends State<ChooseCropType> {
  List items = [
    {
      'title': 'สวนอินทผาลัม',
      'subtitle': 'อัพเดตเมื่อ 05/11/2021 17:00',
    },
    {
      'title': 'สวนองุ่น',
      'subtitle': 'อัพเดตเมื่อ 05/11/2021 17:00',
    },
    {
      'title': 'สวนกล้วย',
      'subtitle': 'อัพเดตเมื่อ 05/11/2021 17:00',
    },
    {
      'title': 'สวนแก้วมังกร',
      'subtitle': 'อัพเดตเมื่อ 05/11/2021 17:00',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Crop'),
        centerTitle: true,
      ),
      body: Container(
        // MediaQuery ใช้ปรับความกว้างแอพให้เท่าจอ
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'เลือกแปลงการเกษตรของคุณ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          print('Inkwell');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          height: 70,
                          margin: EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: ListTile(
                            title: Text(
                              '${items[index]['title']}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              '${items[index]['subtitle']}',
                            ),
                            trailing: Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.mode_edit_rounded,
                                  size: 50,
                                ),
                                onTap: () {
                                  print('edit');
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
