import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/background.png',
                height: 241,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 74, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Jobify.',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        SvgPicture.asset('assets/svgs/notification.svg'),
                        const SizedBox(width: 15),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21)),
                          width: 42,
                          height: 42,
                          child: Image.network('https://i.pravatar.cc/300'),
                        )
                      ],
                    )

                    //
                    ,
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svgs/search.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Search job, company etc',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      color: const Color(0xFF7F879E),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            color: Color(0xFFF9F9F9),
                            height: 1.5,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svgs/location.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Location',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      color: const Color(0xFF7F879E),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF3860E2),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  'Search',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                  //
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
