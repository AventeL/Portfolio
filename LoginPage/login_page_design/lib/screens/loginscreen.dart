import 'package:flutter/material.dart';
import 'package:login_page_design/models/customappbar.dart';
import 'package:login_page_design/models/custombottombar.dart';
import 'package:login_page_design/models/customtextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController? loginController = TextEditingController();
    TextEditingController? pswdController = TextEditingController();
    TextStyle baseStyle = const TextStyle(fontSize: 35);
    TextStyle boldStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 35);
    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(Color(0xffF2C94C)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(true),
            Padding(
              padding: EdgeInsets.only(top: height * 0.15),
              child: RichText(
                  text: TextSpan(
                      text: "Welcome Back,\n",
                      style: baseStyle,
                      children: [TextSpan(text: "Rebbeca", style: boldStyle)])),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CustomTextField("Email address", loginController),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03, bottom: 10),
              child: CustomTextField("Password", pswdController),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
