import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/project_colors.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SvgPicture.asset(
                "images/Logo.svg",
                alignment: Alignment.topCenter,
              ),
            ),
          ),

          //title and content
          Expanded(
            flex: 3,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                  child: Text(
                    "5 Tips to treat plants",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    style: TextStyle(
                      height: 1.75,
                      fontSize: 18,
                      color: textGrey,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
