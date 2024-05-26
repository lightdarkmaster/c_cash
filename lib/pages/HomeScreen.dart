import 'package:c_cash/pages/components/Money.dart';
import 'package:c_cash/pages/components/Save.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceCard(),
            const SizedBox(height: 10),
            _buildSecondCard(), // Add the second card below the first card
            const SizedBox(height: 10),
            _buildAdsCard(),
            const SizedBox(height: 10),
            _buildAds2Card(),
            const SizedBox(height: 10),
            _buildAds3Card(),
          ],
        ),
      ),
      floatingActionButton:
          _buildCashInButton(), // Move the cash-in button to the FAB
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildBalanceCard() {
    return Card(
      color: const Color.fromARGB(255, 173, 24, 179),
      elevation: 20,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 135,
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
    );
  }

  Widget _buildSecondCard() {
    return Card(
      elevation: 10,
      color: const Color.fromARGB(232, 255, 255, 255),
      child: Container(
        height: 355,
        width: double.infinity,
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoneyPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/money.png',
                          width: 70, height: 70),
                      const SizedBox(height: 5),
                      const Text(
                        'Money',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CSave()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/piggybank.png',
                          width: 60, height: 60),
                      const SizedBox(height: 10),
                      const Text(
                        'C-Save',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CSave()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/sendmoney.png',
                          width: 60, height: 60),
                      const SizedBox(height: 10),
                      const Text(
                        'Send Money',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CSave()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/load.png',
                          width: 60, height: 60),
                      const SizedBox(height: 10),
                      const Text(
                        'Load',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CSave()),

                    );
                  },
                  child: Column(children: [
                    Image.asset('assets/images/cashin',
                    width: 60, height: 60),
                    const SizedBox(height: 10),
                    const Text(
                      'Cash In',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                    ),
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/bills.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Bills',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/credit.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Credit',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/rewards.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Rewards',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/invest.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'C-Invest',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/bank.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Bank',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/insurance.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Insurance',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset('assets/images/showmore.png',
                        width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text(
                      'Show More',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
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

  Widget _buildAdsCard() {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Invest Now!!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            'assets/images/bank.gif', // Path to local image asset
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Unlock your financial potential with LandBank. Invest confidently in your future with LandBank trusted and secure investment solutions. Discover the power of smart investing with LandBank today',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAds2Card() {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            'assets/images/earn.gif', // Path to local image asset
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Maximize your earnings through smart investing. Start building wealth and securing your financial future by investing wisely today.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAds3Card() {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            'assets/images/money.gif', // Path to local image asset
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Cryptocurrency, often referred to as crypto, is a digital or virtual form of currency secured by cryptography. It operates independently of a central authority, such as a government or bank, making it decentralized. Transactions involving cryptocurrencies are recorded on a digital ledger called a blockchain, which ensures transparency and immutability.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCashInButton() {
    return const SizedBox(); // Empty widget because the button is now part of the balance card
  }
}
