import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class statusWidget extends StatefulWidget {
  const statusWidget({super.key});

  @override
  State<statusWidget> createState() => _statusWidgetState();
}

class _statusWidgetState extends State<statusWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey, width: 3)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                            "https://png.pngtree.com/png-clipart/20210915/ourmid/pngtree-avatar-icon-abstract-user-login-icon-png-image_3917181.jpg",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Status',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Today 12:33 am',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xff075e55),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Updates',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              for (int i = 2; i < 4; i++)
                Container(
                  margin: EdgeInsets.all(12),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.green, width: 3)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Image.network(
                          'https://png.pngtree.com/png-clipart/20210915/ourmid/pngtree-avatar-icon-abstract-user-login-icon-png-image_3917181.jpg ',
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dude',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Todat,  1:08am',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54))
                        ],
                      ),
                    )
                  ]),
                ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Viewed Updates',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              for (int i = 2; i < 6; i++)
                Container(
                  margin: EdgeInsets.all(12),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Image.network(
                          'https://png.pngtree.com/png-clipart/20210915/ourmid/pngtree-avatar-icon-abstract-user-login-icon-png-image_3917181.jpg',
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Leo',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Yesterday,  5:44am',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54))
                        ],
                      ),
                    )
                  ]),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 300),
            child: FloatingActionButton(
              child: Icon(Icons.camera_alt),
              backgroundColor: Color(0xff075e55),
              onPressed: () async {
                ImagePicker imagePicker = ImagePicker();
                await imagePicker.pickImage(source: ImageSource.camera);
              },
            ),
          ),
        ],
      ),
    );
  }
}
