import 'package:belajar_fundamental/gojek/components/header.dart';
import 'package:belajar_fundamental/gojek/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xFFE8E8E8))),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/search.svg',
                              colorFilter:
                                  ColorFilter.mode(dark1, BlendMode.srcIn),
                              width: 20,
                              height: 20),
                          const SizedBox(width: 10),
                          Text('Cari layanan, makanan & tujuan',
                              style: regular14.copyWith(color: dark3))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35 / 2)),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('assets/images/Avatar.png')),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35 / 2),
                                  color: const Color(0xFFD1E7EE)),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset('assets/icons/goclub.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue2, BlendMode.srcIn)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            // gopay
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFBBBBBB),
                                  borderRadius: BorderRadius.circular(1)),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              height: 8,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(1)),
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Container(
                            width: 118,
                            height: 11,
                            decoration: const BoxDecoration(
                                color: Color(0xFF9CCDDB),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 127,
                            height: 68,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors
                                  .white, // Assuming 'white' is a Color variable
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gopay.png',
                                  height: 14,
                                ),
                                const SizedBox(height: 2),
                                Flexible(
                                  child: Text(
                                    'Rp12.379',
                                    style: bold16.copyWith(color: dark1),
                                    maxLines: 1, // Ensure text doesn't overflow
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Klik & cek riwayat',
                                    style: semibold12_5.copyWith(color: green1),
                                    maxLines: 1, // Ensure text doesn't overflow
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
