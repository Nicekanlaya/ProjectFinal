import 'package:cornnapp/model/profile.dart';
import 'package:cornnapp/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(
    email: '',
    password: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ข้อมูลแปลง",
          style: GoogleFonts.itim(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ชื่อแปลง", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "กรุณากรอกชื่อแปลง"),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("รอบที่ปลูก", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator:
                        RequiredValidator(errorText: "กรุณากรอกรรอบที่ปลูก"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("พื้นที่เพาะปลูก", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: "กรุณากรอกพื้นที่เพาะปลูก"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("เนื้อที่เพาะปลูก(ไร่)", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: "กรุณากรอกเนื้อที่เพาะปลูก(ไร่)"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Text("พันธุ์ข้าวโพด", style: TextStyle(fontSize: 16)),
                  // TextFormField(
                  //   validator:
                  //       RequiredValidator(errorText: "กรุณาเลือกพันธุ์ข้าวโพด"),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("วิธีการเพาะปลูก", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: "กรุณาเลือกวิธีการเพาะปลูก"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("ลักษณะดิน", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator:
                        RequiredValidator(errorText: "กรุณาเลือกลักษณะดิน"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("วันที่เริ่มปลูก", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: "กรุณากรอกวันที่เริ่มปลูก"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                      child: ElevatedButton(
                          child: Text(
                            "ยืนยัน",
                            style: GoogleFonts.itim(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
