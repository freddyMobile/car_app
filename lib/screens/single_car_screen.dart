import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class SingleCarScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String totalCapacity;
  final String highestSpeed;
  final String engine;
  final String price;
  final String rating;
  const SingleCarScreen(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.totalCapacity,
      required this.highestSpeed,
      required this.engine,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 126, 126, 126).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(255, 82, 82, 82),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text(
          'Car Details',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 82, 82, 82),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height * 0.25,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imageUrl))),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: size.width,
            height: size.height * 0.6,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '($rating)',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: SizedBox(
                      width: size.width,
                      height: 70,
                      child: ReadMoreText(
                        description,
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: Icon(
                                      Icons.table_bar,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Total capacity',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '$totalCapacity seats',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(children: [
                            const Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: Icon(
                                    Icons.table_bar,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              'Highest speed',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '$highestSpeed km/h',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: Icon(
                                      Icons.table_bar,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Engine capacity',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '$engine HP',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Price',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            '\$${price.toString()}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        alignment: Alignment.center,
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
