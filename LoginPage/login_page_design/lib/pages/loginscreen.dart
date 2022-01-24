import 'package:flutter/material.dart';
import 'package:login_page_design/models/customappbar.dart';
import 'package:login_page_design/models/customtextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController? loginController = TextEditingController();
    TextEditingController? signupController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            Padding(
              padding: EdgeInsets.only(top: height * 0.15),
              child: RichText(
                  text: const TextSpan(
                      text: "Welcome Back,\n",
                      style: TextStyle(fontSize: 35),
                      children: [
                    TextSpan(
                        text: "Rebbeca",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35))
                  ])),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CustomTextField("Email address", loginController),
            Padding(
              padding: EdgeInsets.only(top: height * 0.05, bottom: 10),
              child: CustomTextField("Password", signupController),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.network(
                      "https://img.icons8.com/material-sharp/384/facebook-f.png"),
                  iconSize: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.network(
                        "https://flyclipart.com/thumb2/google-plus-icon-google-plus-black-png-and-vector-for-free-download-825032.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
