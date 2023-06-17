import 'dart:html';

import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  void getDropdownItems (){
    for(int i=0; i<currenciesList.length; i++){
      String currency = currenciesList[i];
      DropdownMenuItems(child: Text(currency), value:currency,);
    }
  }

  @override
  Widget build(BuildContext context) {
    getDropdownItems();
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdoenButton<String>(
                value: selectedCurrency,
                items: [
                  DropdownMenuItem(
                    child: Text('USD'),
                    value: 'USD',
                  ),
                  DropdownMenuItem(
                    child: Text('ERUO'),
                    value: 'ERUO',
                  ),
                  DropdownMenuItem(
                    child: Text('YAN'),
                    value: 'YAN',
                  ),
                  DropdownMenuItem(
                    child: Text('AFG'),
                    value: 'AFG',
                  ),
                ],
                onchange: (value) {
                  setState(() {selectedCurrency = value});
                }),
          ),
        ],
      ),
    );
  }
}
