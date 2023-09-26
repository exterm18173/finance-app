// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;
  const MyListTile({super.key, 
  required this.iconImagePath,
  required this.tileSubTitle,
  required this.tileTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [Container(
                  height: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(iconImagePath),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tileTitle,
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    Text(
                      tileSubTitle,
                      style: TextStyle(fontSize: 16,
                      color: Colors.grey[600],
                      ),
                    )
                  ]
                ),
                ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
              );
  }
}