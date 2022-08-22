import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/cart.dart' as cart_page;
import 'package:la_vie_app_1/search.dart' as search_page;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final Color myGreen = const Color.fromRGBO(26, 188, 0, 1);
  final Color textGrey = const Color.fromRGBO(147, 147, 147, 1);
  final Color dividerGrey = const Color.fromRGBO(151, 151, 151, 1);
  final Color searchBackground = const Color.fromRGBO(221, 222, 225, 0.4);

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Search Bar
                    SizedBox(
                      width: 250,
                      height: 40.0,
                      //height: ,
                      child: TextFormField(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const search_page.Search(),
                            ),
                          );
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: searchBackground,
                          contentPadding: const EdgeInsets.all(0),
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
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: searchBackground,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Cart Button
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: myGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
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

              // Space
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
