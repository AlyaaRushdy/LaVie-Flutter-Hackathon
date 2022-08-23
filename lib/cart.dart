import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  final Color myGreen = const Color.fromRGBO(26, 188, 0, 1);
  final Color textGrey = const Color.fromRGBO(147, 147, 147, 1);
  final Color dividerGrey = const Color.fromRGBO(151, 151, 151, 1);
  final Color searchBackground = const Color.fromRGBO(221, 222, 225, 0.4);

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
                  SizedBox(
                    width: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      enabled: false,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
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
              const SizedBox(
                height: 10,
              ),

              Card(
                shadowColor: Colors.grey,
                elevation: 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "images/LogInDecoration.svg",
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Cactus Plant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "200 EGP",
                              style: TextStyle(
                                fontSize: 16,
                                color: myGreen,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 100,
                                height: 35,
                                child: ElevatedButton(
                                  child: const Text(
                                    "1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text(
                      "Checkout",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
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
