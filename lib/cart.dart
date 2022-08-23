import 'package:flutter/material.dart';
import 'package:la_vie_app_1/project_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/home.dart' as home_page;

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  final SizedBox w10Space = const SizedBox(
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: double.infinity,
        child: FloatingActionButton(
          backgroundColor: myGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            "Checkout",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

                  //Cart header text
                  const Expanded(
                    flex: 8,
                    child: TextField(
                      enabled: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "My Cart",
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

              //Item Detailes
              IntrinsicHeight(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      //item image
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
                          children: [
                            //name
                            const Text(
                              "Cactus Plant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //price
                            const Text(
                              "200 EGP",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),

                            //amount, increment and decrement buttons and delete button
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: searchBackground,
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  //amount , increment and decrement buttons
                                  child: Row(
                                    children: [
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                      ),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ),

                                //delete button
                                Expanded(
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    color: myGreen,
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Item Detailes
              IntrinsicHeight(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      //item image
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
                          children: [
                            //name
                            const Text(
                              "Cactus Plant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //price
                            const Text(
                              "200 EGP",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),

                            //amount, increment and decrement buttons and delete button
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: searchBackground,
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  //amount , increment and decrement buttons
                                  child: Row(
                                    children: [
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                      ),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ),

                                //delete button
                                Expanded(
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    color: myGreen,
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Item Detailes
              IntrinsicHeight(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      //item image
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
                          children: [
                            //name
                            const Text(
                              "Cactus Plant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //price
                            const Text(
                              "200 EGP",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),

                            //amount, increment and decrement buttons and delete button
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: searchBackground,
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  //amount , increment and decrement buttons
                                  child: Row(
                                    children: [
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                      ),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      IconButton(
                                        color: myGreen,
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ),

                                //delete button
                                Expanded(
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    color: myGreen,
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            ),
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
