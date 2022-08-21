import 'package:flutter/material.dart';
import 'package:la_vie_app_1/home.dart' as home_page;

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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              child: SizedBox(
                width: 320,
                child: Text(
                  "Search Results",
                  style: TextStyle(
                    color: dividerGrey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            //Search res. 1
            TextFormField(
              readOnly: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const home_page.HomePage(),
                  ),
                );
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                hintText: "OnTap Test",
                hintStyle: TextStyle(
                  color: dividerGrey,
                ),
                prefixIcon: Icon(
                  Icons.history_rounded,
                  color: dividerGrey,
                ),
                suffixIcon: Icon(
                  Icons.clear_rounded,
                  color: dividerGrey,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
              ),
            ),

            //search res.2
            TextFormField(
              readOnly: true,
              onTap: () {},
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                hintText: "GARDENIA PLANT",
                hintStyle: TextStyle(
                  color: dividerGrey,
                ),
                prefixIcon: Icon(
                  Icons.history_rounded,
                  color: dividerGrey,
                ),
                suffixIcon: Icon(
                  Icons.clear_rounded,
                  color: dividerGrey,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
              ),
            ),

            //search res. 3
            TextFormField(
              readOnly: true,
              onTap: () {},
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                hintText: "GARDENIA PLANT",
                hintStyle: TextStyle(
                  color: dividerGrey,
                ),
                prefixIcon: Icon(
                  Icons.history_rounded,
                  color: dividerGrey,
                ),
                suffixIcon: Icon(
                  Icons.clear_rounded,
                  color: dividerGrey,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
