import 'package:flutter/material.dart';
import 'package:foodie_ui/screens/main_page.dart';
import 'package:foodie_ui/widgets/customized_container.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 580,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage('assets/images/burger-10956.png')
              )
            ),
          ),
          CustomizedContainer(
            height: 220,
            width: 380,
            color: Colors.black26,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
            const Text(
              'To',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

                const Text(
                  'NH Food Delivery Shop',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),

             InkWell(
               onTap: () => {
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (_) {
                     return const MainPage();
                   })
                 )
               },
               child: const CustomizedContainer(
                   width: 250,
                   height: 50,
                   color: Colors.orange,
                   child: Center(
                     child: Text(
                         "Let's go",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
               ),
             )
              ],
            ),
          )
        ],
      ),
    );
  }
}
