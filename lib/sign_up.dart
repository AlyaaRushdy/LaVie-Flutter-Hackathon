import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_vie_app_1/log_in.dart' as log_in_page;

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  final Color myGreen = const Color.fromRGBO(26, 188, 0, 1);
  final Color textGrey = const Color.fromRGBO(147, 147, 147, 1);
  final Color dividerGrey = const Color.fromRGBO(151, 151, 151, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TopRight Decoration
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "images/LogInDecoration.svg",
                height: 125,
              ),
            ),

            //space
            const SizedBox(
              height: 5.0,
            ),

            //Logo
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                "images/Logo.svg",
                width: 120.0,
                height: 43.0,
              ),
            ),

            //Sign Up and Log In Buttons
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 0.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Sign Up Button
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: myGreen,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  ),

                  //Log In Button
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const log_in_page.LogIn(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: textGrey,
                    ),
                    child: const Text("Log In"),
                  ),
                ],
              ),
            ),

            // Space
            const SizedBox(
              height: 10.0,
            ),

            //Form
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              alignment: Alignment.center,
              child: Form(
                child: Column(
                  children: [
                    //First and Last names
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                heightFactor: 1.5,
                                child: Text(
                                  "First Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textGrey,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: myGreen,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: textGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                heightFactor: 1.5,
                                child: Text(
                                  "Last Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textGrey,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: myGreen,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: textGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //Email
                    Align(
                      alignment: Alignment.centerLeft,
                      heightFactor: 1.5,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 16,
                          color: textGrey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: myGreen,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: textGrey,
                          ),
                        ),
                      ),
                    ),

                    // Space
                    const SizedBox(
                      height: 15.0,
                    ),

                    //Password
                    Align(
                      alignment: Alignment.centerLeft,
                      heightFactor: 1.5,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 16,
                          color: textGrey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: myGreen,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: textGrey,
                          ),
                        ),
                      ),
                    ),

                    // Space
                    const SizedBox(
                      height: 15.0,
                    ),

                    //Password
                    Align(
                      alignment: Alignment.centerLeft,
                      heightFactor: 1.5,
                      child: Text(
                        "Confirm password",
                        style: TextStyle(
                          fontSize: 16,
                          color: textGrey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: myGreen,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: textGrey,
                          ),
                        ),
                      ),
                    ),

                    // Space
                    const SizedBox(
                      height: 20.0,
                    ),

                    //Log In Action Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45.0),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    // Space
                    const SizedBox(
                      height: 25.0,
                    ),

                    //divider with text
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            color: dividerGrey,
                            endIndent: 7.5,
                          ),
                        ),
                        Text(
                          "or continue with",
                          style: TextStyle(color: dividerGrey),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            color: dividerGrey,
                            indent: 7.5,
                          ),
                        ),
                      ],
                    ),

                    // Space
                    const SizedBox(
                      height: 20.0,
                    ),

                    //google and facebook icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset("images/Google.svg"),
                          label: const Text(''),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset("images/Facebook.svg"),
                          label: const Text(''),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Space
            const SizedBox(
              height: 10.0,
            ),

            //BottomLeft Decoration
            Align(
              alignment: Alignment.bottomLeft,
              child: RotatedBox(
                quarterTurns: 2,
                child: SvgPicture.asset(
                  "images/LogInDecoration.svg",
                  height: 125,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
