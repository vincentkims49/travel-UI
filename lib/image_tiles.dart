import 'package:flutter/material.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/3.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/2.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/1.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/4.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/5.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/6.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/7.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/8.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const LocationText(),
        ),
      ],
    );
  }
}

class LocationText extends StatelessWidget {
  const LocationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 330),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "New York City",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_city_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
