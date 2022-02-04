import 'package:flutter/material.dart';
import 'package:login_page_design/models/customappbar.dart';
import 'package:login_page_design/models/custombottombar.dart';
import 'package:login_page_design/models/customtextfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController? loginController = TextEditingController();
    TextEditingController? pswdController = TextEditingController();
    TextEditingController? pswdConfirmController = TextEditingController();
    TextStyle baseStyle = const TextStyle(fontSize: 35, color: Colors.black);
    TextStyle boldStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black);
    TextStyle littleStyle = const TextStyle(fontSize: 15, color: Colors.black);
    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(Color(0xffEB5757)),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(false),
            Padding(
              padding: EdgeInsets.only(top: height * 0.15),
              child: RichText(
                  text: TextSpan(text: "Hello ", style: baseStyle, children: [
                TextSpan(text: "Beautiful,\n", style: boldStyle),
                TextSpan(
                    text:
                        "Enter your informations below or\nlogin with a social account",
                    style: littleStyle)
              ])),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CustomTextField("Email address", loginController),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03, bottom: 10),
              child: CustomTextField("Password", pswdController),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03, bottom: 10),
              child: CustomTextField("Password again", pswdConfirmController),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.network(
                      "https://img.icons8.com/material-sharp/384/facebook-f.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.network(
                      "https://img.icons8.com/windows/96/000000/google-plus.png",
                    ),
                    iconSize: 30,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
