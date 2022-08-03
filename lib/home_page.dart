import 'package:flutter/material.dart';
import 'job_card.dart';
import 'recent_job_card.dart';
//mport 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// This widget is the root of your application.
class _HomePageState extends State<HomePage> {

  final List jobsForyou =[
    ['uber', 'UI Designer', 'icons/uber.png', 45],
    ['Google', 'Product Dev', 'icons/google.png', 88],
    ['Apple', 'Software Eng', 'icons/logo-apple.png', 95],
  ];

  final List recentJob =[
    ['Nike', 'UI/UX Designer', 'icons/nike.png', 45],
    ['Apple', 'Software Eng', 'icons/logo-apple.png', 55],
    ['Google', 'product Designer', 'icons/google.png', 60],
  ];
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
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
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
                  child: Image.asset(
                    'icons/preferences.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),


          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'For you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              )),

               SizedBox(height: 25),

               Container(
                height: 160,
                child: 
               ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context,index){
                  return JobCard(
                    companyName: jobsForyou[index][0],
                     jobTitle: jobsForyou[index][1],
                      logoImagePath: jobsForyou[index][2],
                       hourlyRate: jobsForyou[index][3],

                  );

                })
               ),

                SizedBox(height: 50),


          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Recently Added',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              )),
              // SizedBox(height: 50),

              
                
               Expanded(
                child:
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:25.0),
                   child: ListView.builder(
                    itemCount: recentJob.length ,
                    itemBuilder: (context,index){
                      return RecentJobCard(
                        companyName: recentJob[index][0],
                         jobTitle: recentJob[index][1], 
                         logoImagePath: recentJob[index][2],
                          hourlyRate:recentJob[index][3]
                          );


                    }),
                 )),
              




        ],
      ),
    );
  }
}
      
        //),
     // ),