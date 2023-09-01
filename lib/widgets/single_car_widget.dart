import 'package:flutter/material.dart';

class SingleCarWidget extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String price;
  final String star;
  const SingleCarWidget(
      {super.key,
      required this.carName,
      required this.imageUrl,
      required this.price,
      required this.star});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color.fromARGB(255, 173, 173, 173).withOpacity(0.3)),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              width: size.width,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imageUrl))),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.35,
                  child: Text(
                    carName,
                    maxLines: 1,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Row(
              children: [
                Text(
                  '\$$price',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    SizedBox(
                      height: size.height * 0.001,
                    ),
                    Text(
                      star,
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
