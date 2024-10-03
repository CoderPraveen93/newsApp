// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class NewsForYouWidget extends StatelessWidget {
//   String img;
//   String headline;
//   String authorName;
//   NewsForYouWidget(
//       {super.key,
//       required this.headline,
//       required this.authorName,
//       required this.img});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//           //physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 10),
//               child: Container(
//                   width: double.maxFinite,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: const Color.fromARGB(255, 50, 48, 48),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 10, right: 10, top: 10, bottom: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           flex: 1,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20)),
//                             width: 150,
//                             height: 150,
//                             child: ClipRRect(
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(15)),
//                               child: Image.network("$img"),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         Expanded(
//                           flex: 1,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   const CircleAvatar(
//                                     radius: 12,
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                   Text(
//                                     "$authorName",
//                                     style: TextStyle(
//                                       color: Colors.white.withOpacity(0.7),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               Text(
//                                 maxLines: 2,
//                                 "$headline",
//                                 style: const TextStyle(
//                                     color: Colors.white, fontSize: 15),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "2 days ago",
//                                 style: TextStyle(
//                                   color: Colors.white.withOpacity(0.7),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//             );
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsForYouWidget extends StatelessWidget {
  String img;
  String headline;
  String authorName;
  String date;
  String authFirstLatter;
  VoidCallback onTap;
  NewsForYouWidget(
      {super.key,
      required this.onTap,
      required this.headline,
      required this.authorName,
      required this.img,
      required this.date,
      required this.authFirstLatter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 50, 48, 48),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: Image.network(
                          "$img",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 12,
                              child: Center(
                                  child: Text(
                                authFirstLatter,
                              )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                authorName,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          maxLines: 2,
                          "$headline",
                          style:
                              const TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
