import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => loginPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff075e55),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 370, left: 100),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://www.google.com/search?q=whatsapp+image&sca_esv=566836015&rlz=1C1ONGR_en-GBIN1073IN1074&sxsrf=AM9HkKmni0f0UFypHtWC9dZaz_9R-y71vQ%3A1695187310487&ei=boEKZZafHYqJ4-EPqeCPsAE&oq=whatsapp&gs_lp=Egxnd3Mtd2l6LXNlcnAiCHdoYXRzYXBwKgIIAzIHECMYigUYJzIHECMYigUYJzIHECMYigUYJzIIEAAYigUYkQIyCBAAGIoFGJECMgsQABiABBixAxiDATIIEAAYigUYkQIyCBAAGIoFGJECMg0QABiKBRixAxiDARhDMg4QABiKBRixAxiDARiRAkj-QVCoB1iHL3ACeACQAQSYAbQBoAH4FaoBBDAuMjC4AQHIAQD4AQGoAhTCAggQABiABBiwA8ICCRAAGAgYHhiwA8ICCxAAGIoFGIYDGLADwgIGEAAYFhgewgIIEAAYFhgeGA_CAggQABiKBRiGA8ICBxAjGOoCGCfCAgcQLhjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEBwgILEC4YgAQYxwEY0QPCAggQABiABBixA8ICBxAAGIoFGEPCAgUQABiABMICCxAAGIoFGLEDGIMB4gMEGAEgQYgGAZAGA7oGBggBEAEYCw&sclient=gws-wiz-serp#vhid=AqL1RlnhoDwPOM&vssid=l",
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Whatsapp',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
