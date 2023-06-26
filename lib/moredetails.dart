import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

var details = [
  'Name:',
  'Problem:',
  'Description of problem:',
  'Live/scheduled status:',
  'Location:',
  'Distance from your location:',
  'Booking id:',
  'Price amount:',
  'Approx time req:'
];

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: const AssetImage('lib/assets/images/towtruck.png'),
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              child: ListView(
                  shrinkWrap: true,
                  children: details.map((value) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.blue[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value),
                        ),
                      ),
                    );
                  }).toList()),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: const Size.fromHeight(45)),
                        child: const Text(
                          'Accept',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MoreDetails()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.red[300],
                            fixedSize: const Size.fromHeight(45)),
                        child: const Text('Reject!'),
                        onPressed: () {
                          // Handle button 2 press
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Scaffold(
//       body: SizedBox(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Image(
//                   image: const AssetImage('lib/assets/images/towtruck.png'),
//                   width: MediaQuery.of(context).size.width * 0.95,
//                   height: MediaQuery.of(context).size.height * 0.25,
//                 ),
//                 // Positioned(
//                 //   child: IconButton(
//                 //     onPressed: () {
//                 //       Navigator.pop(context);
//                 //     },
//                 //     icon: const Icon(
//                 //       Icons.arrow_back,
//                 //       color: Colors.black,
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 children: [
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'udquwbduq',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(fontSize: 22.0),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
        
//       ),
//     );