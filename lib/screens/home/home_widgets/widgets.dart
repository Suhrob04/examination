import 'package:mybigexam/constants/export_pages.dart';

class HomeWidgets extends StatelessWidget {
  String? title;
  String? subtitle;
  String? svgicon;
  HomeWidgets({Key? key, this.title, this.subtitle, this.svgicon})
      : super(key: key);
  List<Map<String, dynamic>> pageList = [
    {
      "title": "Buku resep spesial antara",
      "subtitle":
          "keep  it  easy  with  these  simple  but  delicious  recipes",
      "count1": "13.7K  likes",
      "count2": "7  recipes",
    },
    {
      "title": "fa",
      "subtitle": "dsafds",
      "count1": "dadf",
      "count2": "safdas",
    },
    {
      "title": "fa",
      "subtitle": "dsafds",
      "count1": "dadf",
      "count2": "safdas",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: getHeight(44),
          width: getWidth(44),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ),
        SizedBox(
          width: getWidth(12),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: TextStyle(
                  fontSize: getWidth(20), fontWeight: FontWeight.w500),
            ),
            Text(
              subtitle!,
              style: TextStyle(
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF636773)),
            )
          ],
        ),
        SizedBox(
          width: getWidth(38),
        ),
        SizedBox(
          height: getHeight(44),
          width: getWidth(44),
          child: SvgPicture.asset(
            svgicon!,
            height: getHeight(44),
            width: getWidth(44),
          ),
        )
      ],
    );
  }

  cookbookPageview(
    BuildContext context,
  ) {
    return Column(
      children: [
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
              (context.watch<CurrentPage>().currentPage + 1).toString() + "/3",
              style: TextStyle(
                fontSize: getWidth(16),
              ),
            )
          ],
        ),
        SizedBox(
          height: getHeight(28.0),
        ),
        Container(
          height: getHeight(343),
          width: getWidth(478),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHeight(16)),
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
            color: Colors.white,
          ),
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            pageSnapping: true,
            onPageChanged: (v) {
              context.read<CurrentPage>().setCurrentPage(v);
            },
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              return _buildPageViewItem(
                pageList[index]["title"],
                pageList[index]["subtitle"],
                pageList[index]["count1"],
                pageList[index]["count2"],
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(pageList.length, (i) {
            return Icon(
              context.watch<CurrentPage>().currentPage == i
                  ? Icons.circle_sharp
                  : Icons.circle_outlined,
              color: kOrange,
              size: 13,
            );
          }).toList(),
        ),
        SizedBox(
          height: getHeight(60),
        ),
      ],
    );
  }

  _buildPageViewItem(
    String title,
    String subtitle,
    String count1,
    String count2,
  ) {
    return Container(
      height: getHeight(478),
      width: getWidth(343),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getWidth(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getHeight(36),
            width: getWidth(36),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(18)),
            child: SvgPicture.asset(
              "assets/icons/Union.svg",
              height: getHeight(16),
              width: getWidth(16),
            ),
          ),
          SizedBox(
            height: getHeight(12.0),
          ),
          SizedBox(
            height: getHeight(66),
            width: getWidth(251),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontSize: getHeight(24.0),
                  fontWeight: FontWeight.w500,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ),
          SizedBox(
            height: getHeight(12),
          ),
          SizedBox(
            height: getHeight(48),
            width: getWidth(251),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontSize: getHeight(15.0),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF636773)),
            ),
          ),
          SizedBox(
            height: getHeight(12),
          ),
          SizedBox(
            height: getHeight(30),
            width: getWidth(251),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  count1,
                  style: TextStyle(
                    fontSize: getHeight(16),
                  ),
                ),
                SizedBox(height: getHeight(20),
                child: const VerticalDivider(
                  thickness: 1.1,
                  indent: 1,
                ),
                ),
                Text(
                  count2,
                  style: TextStyle(
                    fontSize: getHeight(16),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getHeight(50),
          )
        ],
      ),
    );
  }
}
