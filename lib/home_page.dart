import 'package:flutter/material.dart';
//mport 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// This widget is the root of your application.
class _HomePageState extends State<HomePage> {
//page controleur

  //final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Image.asset(
                'icons/menu.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          SizedBox(height: 25),


          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              
                child:
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(color:Colors.white),
                                borderRadius: BorderRadius.circular(12)
                                
                                ),
                              child: Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 40,
                                      color: Colors.grey[600],
                                    ),
                                    hintText: 'cherche ton job..',
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Container(
                            height: 50,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('icons/preferences.png',
                            color: Colors.white,),
                          )
                        ],
                      ),

                      
                    
                  
                
              
              ),
        ],
      ),
    );
  }
}
      
        //),
     // ),