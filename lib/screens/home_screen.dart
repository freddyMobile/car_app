import 'package:car_app/controllers/car_controller.dart';
import 'package:car_app/models/car_model.dart';
import 'package:car_app/screens/single_car_screen.dart';
import 'package:car_app/widgets/single_car_Widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarController carController = CarController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carController.fetchAllCars().then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 247, 255),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent.fgyd4-2.fna.fbcdn.net/v/t39.30808-6/300968455_2246553238843534_6837939553001893765_n.jpg?stp=cp6_dst-jpg&_nc_cat=105&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=8r6gw8uH-BMAX-GBLB4&_nc_ht=scontent.fgyd4-2.fna&oh=00_AfB4RWkaQmK21z_ZVqlJDiGTRuJBXOp4MZkaDW9sW2ZBUw&oe=64F62BDA'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome 👋',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  'Farid Ahmadov',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              width: size.width,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    decoration: const InputDecoration(
                        hintText: 'Search your cart',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10)),
                  )),
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.compare_arrows_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cadillac',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Tesla',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'BMW',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Mazda',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Car',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        padding: EdgeInsets.only(bottom: size.height * 0.2),
                        scrollDirection: Axis.vertical,
                        itemCount: carController.cars.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 30,
                                crossAxisSpacing: 20,
                                childAspectRatio: 0.8,
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          Cars car = carController.cars[index];
                          return InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SingleCarScreen(
                                  description: car.description!,
                                  engine: car.engine.toString(),
                                  highestSpeed: car.speed.toString(),
                                  imageUrl: car.image!,
                                  price: car.price.toString(),
                                  rating: car.seats.toString(),
                                  title: car.title!,
                                  totalCapacity: car.seats.toString()),
                            )),
                            child: SingleCarWidget(
                              carName: car.title!,
                              imageUrl: car.image!,
                              price: car.price.toString(),
                              star: car.seats.toString(),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
