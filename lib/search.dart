import 'package:flutter/material.dart';
import 'package:la_vie_app_1/project_colors.dart';
import 'package:la_vie_app_1/home.dart' as home_page;

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(25, 50, 20, 25),
        child: Column(
          children: [
            //search bar
            TextFormField(
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
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: searchBackground,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),

            //Recent searchs
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
              child: Expanded(
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
                    builder: (context) => home_page.HomePage(),
                  ),
                );
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
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
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
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
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
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
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
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
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
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
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 0.001,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
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
