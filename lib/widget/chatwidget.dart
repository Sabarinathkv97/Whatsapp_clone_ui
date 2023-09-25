import 'package:flutter/material.dart';

class chatWisget extends StatefulWidget {
  const chatWisget({super.key});

  @override
  State<chatWisget> createState() => _chatWisgetState();
}

class _chatWisgetState extends State<chatWisget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(children: [
        for (int i = 1; i < 12; i++)
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      "https://png.pngtree.com/png-clipart/20210915/ourmid/pngtree-avatar-icon-abstract-user-login-icon-png-image_3917181.jpg",
                      height: 65,
                      width: 65,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          'Jude',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Hi.., how are you',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '7:51',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff0fce5e),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Color(0xff0fce5e),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ]),
    );
  }
}
