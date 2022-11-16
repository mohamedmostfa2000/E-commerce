import 'package:e_commerce/pages/detail.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/model/item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ]),
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {},
                          icon: Icon(Icons.add)),

                      leading: Text("\$12.99"),

                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bg.jpeg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/avatar.jpeg")),
                    accountEmail: Text("mohamed@gmail.com"),
                    accountName: Text("Mohamed Mostfa",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  ListTile(
                      title: const Text("Home"),
                      leading: const Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: const Text("My products"),
                      leading: const Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: const Text("About"),
                      leading: const Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: const Text("Logout"),
                      leading: const Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text("Developed by Mohamed Mostfa © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle),
                          child: const Text(
                            "8",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          )),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ 13",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: appbarGreen,
          title: const Text("Home"),
        ));
  }
}
