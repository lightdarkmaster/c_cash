import 'package:flutter/material.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Money",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Oswald-Light.ttf',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 173, 19, 173),
        iconTheme:
            IconThemeData(color: Colors.white), // Set icon color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140, // Adjust the height as needed
              child: Card(
                color: const Color.fromARGB(255, 173, 24, 179),
                elevation: 20,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 125,
                      padding: const EdgeInsets.all(20.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Available Balance',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(height: 10),
                          Text(
                            '\Php. 8,234.56',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 16,
                      child: SizedBox(
                        height: 35,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.add),
                              SizedBox(width: 5),
                              Text(
                                'Cash In',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 260, // Adjust the height as needed
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '  Make Money',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/wallet1.png',
                                width: 150,
                                height: 150,
                              ),
                              const SizedBox(height: 5),
                              const Text('Php. 3,476.98'),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Perform action when the button is tapped
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text('Add Wallet'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),



            SizedBox(
              height: 260, // Adjust the height as needed
              child: Card(
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            'assets/images/phone.gif', // Path to local image asset
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ),
            ),
          ],
        ),
      ),
    );
  }
}
