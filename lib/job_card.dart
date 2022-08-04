import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  const JobCard({
    Key? key,
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
    //required this.color,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            width: 200,
            padding: const EdgeInsets.all(12.0),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      //width: 20,
                      child: Image.asset(logoImagePath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Temps Partiel',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.grey[500],
                    
                    
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text(jobTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                ),
                Text('\$' + hourlyRate.toString()+ '/hr')
              ],
            )),
      ),
    );
  }
}
