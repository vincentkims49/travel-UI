import 'package:flutter/material.dart';
import 'package:travel_ui/image_tiles.dart';
// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexx = 0;
  List category = ['Places', 'Discover', 'Popular'];
  List allStaff = ['Meuseum', 'Boat', 'Lake', 'Ocean', 'Lake', 'Beach'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blueAccent,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 40,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Top Tours ",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Let's Travel, ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  hintText: 'Search a Place',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            indexx = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: index == 0 ? 4 : 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: indexx == index
                                ? Colors.blueAccent.withOpacity(.8)
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: indexx == index
                                    ? Colors.blueAccent
                                    : Colors.transparent,
                                offset: indexx == index
                                    ? const Offset(1, 1)
                                    : const Offset(0, 0),
                                blurRadius: indexx == index ? 7 : 0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17),
                              child: Text(
                                category[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: indexx == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: 'ro',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 410,
                child: AssetImages(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "See ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " All ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w200,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              color: Colors.white,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: allStaff.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(
                        Icons.location_city_outlined,
                        color: Colors.blueAccent,
                      ),
                      trailing: Text(
                        allStaff[index],
                        style:
                            const TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: const Text("Chunli, India"));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
