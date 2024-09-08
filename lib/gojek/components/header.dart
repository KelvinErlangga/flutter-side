import 'package:belajar_fundamental/gojek/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'Beranda',
              style: semibold14.copyWith(color: green1),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['Promo', 'Pesanan', 'Chat']
                  .map((title) => Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          child: Text(
                            title,
                            style: semibold14.copyWith(color: white),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
