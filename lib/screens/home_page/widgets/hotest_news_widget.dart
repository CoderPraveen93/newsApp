// import 'package:flutter/material.dart';

// class HotestNewsWidget extends StatelessWidget {
//   String img;
//   String headLine;
//   String authorname;
//   VoidCallback onTap;
//   int length;

//   HotestNewsWidget({
//     super.key,
//     required this.authorname,
//     required this.headLine,
//     required this.img,
//     required this.onTap,
//     required this.length,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: ListView.builder(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemCount: length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(
//                 right: 10,
//               ),
//               child: InkWell(
//                 onTap: onTap,
//                 child: Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: const Color.fromARGB(255, 50, 48, 48),
//                     ),
//                     child: Padding(
//                       padding:
//                           const EdgeInsets.only(left: 10, right: 10, top: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20)),
//                             width: double.maxFinite,
//                             child: ClipRRect(
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(15)),
//                               child: Image.network("$img"),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Tranding no.1",
//                                 style: TextStyle(
//                                   color: Colors.white.withOpacity(0.7),
//                                 ),
//                               ),
//                               const Spacer(),
//                               Text(
//                                 "2 Days ago",
//                                 style: TextStyle(
//                                   color: Colors.white.withOpacity(0.7),
//                                 ),
//                               )
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//                           Text(
//                             maxLines: 2,
//                             "$headLine",
//                             style: TextStyle(color: Colors.white, fontSize: 15),
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             children: [
//                               const CircleAvatar(
//                                 radius: 12,
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "$authorname",
//                                 style: TextStyle(
//                                   color: Colors.white.withOpacity(0.7),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     )),
//               ),
//             );
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HotestNewsWidget extends StatelessWidget {
  String img;
  String headLine;
  String authorname;
  VoidCallback onTap;
  String publishDate;
  String autherFirstName;

  HotestNewsWidget({
    super.key,
    required this.authorname,
    required this.headLine,
    required this.img,
    required this.onTap,
    required this.publishDate,
    required this.autherFirstName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 50, 48, 48),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.maxFinite,
                    child: SizedBox(
                      height: 120,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Image.network(
                          img,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Tranding no.1 from $publishDate",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    maxLines: 2,
                    headLine,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 12,
                        child: Center(child: Text(autherFirstName)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          maxLines: 1,
                          authorname,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
