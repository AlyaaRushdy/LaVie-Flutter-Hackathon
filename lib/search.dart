import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  final Color myGreen = const Color.fromRGBO(26, 188, 0, 1);
  final Color textGrey = const Color.fromRGBO(147, 147, 147, 1);
  final Color dividerGrey = const Color.fromRGBO(151, 151, 151, 1);
  final Color searchBackground = const Color.fromRGBO(221, 222, 225, 0.4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(25, 50, 20, 25),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            TextFormField(
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

            //Recent searchs
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(dividerGrey),
              ),
              child: const Text("Search Results"),
            ),
          ],
        ),
      ),
    );
  }
}
