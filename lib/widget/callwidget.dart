import 'package:flutter/material.dart';

class callWidgt extends StatefulWidget {
  const callWidgt({super.key});

  @override
  State<callWidgt> createState() => _callWidgtState();
}

class _callWidgtState extends State<callWidgt> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          for (int i = 2; i < 7; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://png.pngtree.com/png-clipart/20210915/ourmid/pngtree-avatar-icon-abstract-user-login-icon-png-image_3917181.jpg',
                    width: 60,
                    height: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CK',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            size: 19,
                            color: Color(0xff075e55),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(8)  Today,08:09',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.call_sharp,
                  color: Color(0xff075e55),
                )
              ]),
            )
        ],
      ),
    );
  }
}
