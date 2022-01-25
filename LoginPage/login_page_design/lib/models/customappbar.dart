import 'package:flutter/material.dart';
import 'package:login_page_design/screens/loginscreen.dart';
import 'package:login_page_design/screens/signupscreen.dart';

class CustomAppBar extends StatelessWidget {
  final bool isLogin;
  const CustomAppBar(this.isLogin, {Key? key}) : super(key: key);

  final TextStyle isSelected = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black);
  final TextStyle isNotSelected =
      const TextStyle(fontSize: 16, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: isLogin
                  ? const BoxDecoration(border: Border(bottom: BorderSide()))
                  : null,
              child: TextButton(
                onPressed: () {
                  if (!isLogin) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }
                },
                child:
                    Text("Login", style: isLogin ? isSelected : isNotSelected),
              )),
          Padding(
            padding: EdgeInsets.only(right: width * 0.3),
            child: Container(
              decoration: isLogin
                  ? null
                  : const BoxDecoration(border: Border(bottom: BorderSide())),
              child: TextButton(
                  onPressed: () {
                    if (isLogin) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    }
                  },
                  child: Text("Sign Up",
                      style: isLogin ? isNotSelected : isSelected)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isLogin ? null : const Color(0xffEB5757),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                isLogin ? "profilImg.jpg" : "noaccount.png",
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
