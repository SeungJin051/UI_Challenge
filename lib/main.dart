import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: unnecessary_const
            children: [
              SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Hey, SeungJin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          )),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Total Banlance',
                style: TextStyle(color: Colors.white54, fontSize: 22),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                '\$9 194 562',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xFF1f2123),
                      textColor: Colors.white)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.white60, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                isInverted: false,
                first: 0,
                second: 0,
              ),
              CurrencyCard(
                name: 'Won',
                code: 'KRW',
                amount: '5 000',
                icon: Icons.wordpress_sharp,
                isInverted: true,
                first: 0,
                second: -20,
              ),
              CurrencyCard(
                name: 'Bitcoin',
                code: 'BTC',
                amount: '1 320',
                icon: Icons.currency_bitcoin,
                isInverted: false,
                first: 0,
                second: -40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
