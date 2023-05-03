import 'package:flutter/material.dart';
//import '../src/constants/sizes.dart';

import '../src/constants/images.dart';
//import '../src/constants/text.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 0.0, right: 0.0, bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Stack to show background image and text on top
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      // Background image
                      const Expanded(
                        child: Image(
                          image: AssetImage(tWelcomeScreenImage),
                        ),
                      ),
                      // Text on top of the image
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              "Make Every Sip",
                              style: TextStyle(
                                wordSpacing: 1,
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Count",
                              style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB5F70A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 85.0,
                  ),
                  // LoginForm widget
                  const LoginForm(),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Divider with text "or"
                      Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.0, vertical: 8.0),
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "or",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.0, vertical: 8.0),
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: OutlinedButton.icon(
                            icon: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(8.0),
                              child: const Image(
                                image: AssetImage(tGoogleLogoImage),
                                width: 20.0,
                              ),
                            ),
                            onPressed: () {},
                            label: const Text(
                              "Continue With Google",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                  width: 0.2,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // This is a container that contains an OutlinedButton with an icon for signing in with Google.
// It has a padding of 16.0 on the left and right sides.
// The button has a rounded rectangular shape with a border radius of 20.
// The icon is a white Google logo on a black background, with a width of 20.
// The button label is "Continue With Google", with black text and a font size of 16.
// The button border is black with a width of 2.
// The button has an empty onPressed function.
                      const SizedBox(
                        height: 8.0,
                      ),

                      // This is an empty SizedBox widget with a height of 8.
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: OutlinedButton.icon(
                            icon: Image.asset(
                              tFacebookLogoImage,
                              width: 20.0,
                            ),
                            onPressed: () {},
                            label: const Text(
                              "Continue With Facebook",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                  width: 0.2,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // This is a container that contains an OutlinedButton with an icon for signing in with Facebook.
// It has a padding of 16.0 on the left and right sides.
// The button has a rounded rectangular shape with a border radius of 20.
// The icon is a blue Facebook logo on a white background, with a width of 20.
// The button label is "Continue With Facebook", with white text, a font size of 16, and a font weight of 600.
// The button background color is blue with a hexadecimal value of 0xFF1771E6.
// The button border is none.
// The button has an empty onPressed function.
                      const SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}




// return SafeArea(
//   child: Scaffold(
//     backgroundColor: const Color(0xFF1E1E1E),
//     body: SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.only(
//             top: 0.0, left: 0.0, right: 0.0, bottom: 24.0),
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.25),
//               offset: const Offset(0, 4),
//               blurRadius: 4,
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // ...rest of the code
//           ],
//         ),
//       ),
//     ),
//   ),
// );
