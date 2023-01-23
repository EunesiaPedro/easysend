import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({Key? key}) : super(key: key);

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}
class _Add_ScreenState extends State<Add_Screen> {
  String? seletedItem;
  final TextEditingController expalin_C = TextEditingController();
  final List<String> _item = [
    "Name",
    "Surname"
        " Bank Details"
        "Amount"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              background_container(context),
              Positioned(
                top: 120,
                child: main_contaner(),
              ),

            ],

          )
      ),
    );
  }

  background_container(BuildContext context) {
    return Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
            child: Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      Text(
                        "Transactions",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),

                      ),
                      Icon(
                        Icons.attach_file_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]
    );
  }

  Container main_contaner() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: Column(
          children: [
            SizedBox(height: 50),

            TextField(
              controller: expalin_C,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: "Name",
                labelStyle: TextStyle(
                    fontSize: 17, color: Colors.grey.shade500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),

              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: "Surname",
                labelStyle: TextStyle(
                  fontSize: 17, color: Colors.grey.shade500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2, color: Colors.grey)
                )

              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  labelText: "Date",
                  labelStyle: TextStyle(
                      fontSize: 17, color: Colors.grey.shade500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.grey)
                  )

              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  labelText: "Amount",
                  labelStyle: TextStyle(
                      fontSize: 17, color: Colors.grey.shade500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                  )

              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal
                ),
                width: 120,
                height: 50,
                child: Text(
                    'Save',
                  style: TextStyle(
                    fontFamily: "f",
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                      fontSize:17,
                  ),
                ),

              ),
            ),
            SizedBox(height: 20),

          ],

      ),

    );
  }
}



