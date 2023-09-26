// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_button%201.dart';
import 'package:flutter_application_1/util/my_cards.dart';
import 'package:flutter_application_1/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
// page controller
final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Text(
                'Meus',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold, 
                  ),
                ),
                Text(
                ' Cartões',
                style: TextStyle(fontSize: 28),
                ),
              ],
              ),
                // plus button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                    ),
                  child: Icon(Icons.add),
                  ),
              ],
            ),
          ),
          SizedBox(height: 25),

          // cards
         Container(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [
            MyCard(
              balance: 5250.20,
              cardNumber: 12345678,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.deepPurple[300],
            ),
              MyCard(
              balance: 528,
              cardNumber: 12485753,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.blue[300],
            ),
              MyCard(
              balance: 1380.80,
              cardNumber: 005854320,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.orange[300],
            ),
          ],
          ),
         ),
         SizedBox(height: 25),
         SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade800,
          ),
          ),
          SizedBox(height: 25),
          // 3 buttons -> send pay + bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // botão enviar
              MyButton(
                iconImagePath: 'lib/icons/enviar.png', buttonText: 'enviar',
                ),
              // botão play
              MyButton(
                iconImagePath: 'lib/icons/cartão.png', buttonText: 'Play',
                ),
              // botão de contas
              MyButton(
                iconImagePath: 'lib/icons/bills.png', buttonText: 'Contas',
                ),
            ],
          ),
          ),
          SizedBox(height: 25),
          // column -> stats + transactions
          Column(children: [
            // estatisticas
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'lib/icons/graphic.png', 
                    tileTitle: 'Estatisticas',
                    tileSubTitle: 'Pagamentos e Rendimento',
                  ),
                  MyListTile(
                    iconImagePath: 'lib/icons/transferência.gif', 
                    tileTitle: 'Transações',
                    tileSubTitle: 'Histórico de Transações',
                  ),
                  
                ],
              )
              
            ),
            // transição

          ],)
        ]),
      ),
    );
  }
}

