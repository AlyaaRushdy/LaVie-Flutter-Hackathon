import 'package:flutter/material.dart';
import 'package:la_vie_app_1/project_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/home.dart' as home_page;

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  final SizedBox w10Space = const SizedBox(
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Back Icon
                  Expanded(
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home_page.HomePage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                  ),

                  //Blog header text
                  const Expanded(
                    flex: 8,
                    child: TextField(
                      enabled: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "My Blog",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //space
              w10Space,

              //Post Detailes
              IntrinsicHeight(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      //post image
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            alignment: Alignment.center,
                            "images/Logo.svg",
                            width: 140,
                            height: 140,
                          ),
                        ),
                      ),

                      //item info
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            //date
                            Text(
                              "3 days ago",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),

                            //post title
                            Text(
                              "5 Tips to treat plants",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //post text snippet
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(
                                color: textGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Post Detailes
              IntrinsicHeight(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      //post image
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            alignment: Alignment.center,
                            "images/Logo.svg",
                            width: 140,
                            height: 140,
                          ),
                        ),
                      ),

                      //item info
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            //date
                            Text(
                              "3 days ago",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),

                            //post title
                            Text(
                              "5 Tips to treat plants",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //post text snippet
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(
                                color: textGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
