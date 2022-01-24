import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
            decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
            child: TextButton(
                onPressed: () {},
                child: const Text("Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black))),
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.3),
            child: TextButton(
                onPressed: () {},
                child: const Text("Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.grey))),
          ),
          ClipRRect(
            borderRadius:const BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              "https://f.hellowork.com/blogdumoderateur/2013/04/goldengate.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
