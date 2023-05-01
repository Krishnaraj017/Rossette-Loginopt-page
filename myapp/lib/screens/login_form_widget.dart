import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const LoginForm({Key? key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
   
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth,
            child: Container(
              //color: const Color(0xFF000000).withOpacity(0.25),

                padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(20),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  
                  child: Container(
                    

                      
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Login to Rossette",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
