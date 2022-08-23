import 'package:flutter/material.dart';
import 'package:la_vie_app_1/project_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/cart.dart' as cart_page;
import 'package:la_vie_app_1/search.dart' as search_page;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final SizedBox w10Space = const SizedBox(
    width: 10,
  );

  final ButtonStyle inactiveCategoryButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(searchBackground),
  );

  final TextStyle inactiveCategoryButtonTextStyle = const TextStyle(
    color: dividerGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            children: [
              //Logo
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  "images/Logo.svg",
                  width: 120.0,
                  height: 43.0,
                ),
              ),

              //search bar and cart button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Search Bar
                    Expanded(
                      child: TextFormField(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const search_page.Search(),
                            ),
                          );
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: searchBackground,
                          contentPadding: EdgeInsets.all(0),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: dividerGrey,
                          ),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: dividerGrey,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: searchBackground,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: searchBackground,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //space
                    w10Space,

                    //Cart Button
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0),
                        backgroundColor: myGreen,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const cart_page.Cart(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              //Category Scroll Bar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //All Button
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "All",
                      ),
                    ),
                    w10Space,

                    //Plants Button
                    TextButton(
                      onPressed: () {},
                      style: inactiveCategoryButtonStyle,
                      child: Text(
                        "Plants",
                        style: inactiveCategoryButtonTextStyle,
                      ),
                    ),
                    w10Space,

                    //Seeds Button
                    TextButton(
                      onPressed: () {},
                      style: inactiveCategoryButtonStyle,
                      child: Text(
                        "Seeds",
                        style: inactiveCategoryButtonTextStyle,
                      ),
                    ),
                    w10Space,

                    //Seeds Button
                    TextButton(
                      onPressed: () {},
                      style: inactiveCategoryButtonStyle,
                      child: Text(
                        "Tools",
                        style: inactiveCategoryButtonTextStyle,
                      ),
                    ),
                    w10Space,

                    //Seeds Button
                    TextButton(
                      onPressed: () {},
                      style: inactiveCategoryButtonStyle,
                      child: Text(
                        "Seeds",
                        style: inactiveCategoryButtonTextStyle,
                      ),
                    ),
                    w10Space,

                    //Seeds Button
                    TextButton(
                      onPressed: () {},
                      style: inactiveCategoryButtonStyle,
                      child: Text(
                        "Seeds",
                        style: inactiveCategoryButtonTextStyle,
                      ),
                    ),
                    w10Space,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
