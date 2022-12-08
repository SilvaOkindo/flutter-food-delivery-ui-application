import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // row:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // dp
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Center(child: Image.asset('assets/images/Shack-Burger-PNG.png')),
                        ),

                        const SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Silvanus Okindo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),
                            ),

                            const SizedBox(height: 8,),

                            Text(
                              'Welcome, NH Food',
                              style: TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    const Icon(Icons.more_vert, size: 40, color: Colors.orange,)
                  ],
                ),
                //const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined, color: Colors.orange,),
                        SizedBox(width: 10,),
                        Text(
                          'Best Burger Street',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down_sharp, size: 40, color: Colors.orange,),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(60)
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search, size: 30, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text(
                        'Search more',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      )
                    ],
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
