import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybigexam/constants/size_congig.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(16),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(75.5),
            ),
            Row(
              children: [
                Container(
                  height: getHeight(44),
                  width: getWidth(44),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.grey.withOpacity(0.3))),
                ),
                SizedBox(
                  width: getWidth(12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Nararaya",
                      style: TextStyle(
                          fontSize: getWidth(20), fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "What are you cooking today?",
                      style: TextStyle(
                          fontSize: getWidth(14),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF636773)),
                    )
                  ],
                ),
                SizedBox(
                  width: getWidth(53),
                ),
                SizedBox(
                  height: getHeight(44),
                  width: getWidth(44),
                  child: SvgPicture.asset(
                    'assets/icons/bell.svg',
                    height: getHeight(44),
                    width: getWidth(44),
                  ),
                )
              ],
            ),
            SizedBox(height: getHeight(25.5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cookbooks",
                  style: GoogleFonts.roboto(
                    fontSize: getHeight(24.0),
                  ),
                ),
                SizedBox(
                  width: getWidth(190),
                ),
                Text(
                  "1/3",
                  style: TextStyle(
                    fontSize: getWidth(16),
                  ),
                )
              ],
            ),
            SizedBox(height: getHeight(28.0),),
            Container(
              height: getHeight(343),
              width: getWidth(478),
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
