import 'package:mybigexam/constants/export_pages.dart';
import 'package:mybigexam/constants/icons.dart';

class SplashScreen1 extends StatelessWidget {
  SplashScreen1({Key? key}) : super(key: key);
  List<Map<String, dynamic>> pageList = [
    {
      "title": "Make recipes your own",
      "subtitle":
          "With Mallika recipe editor, you can easily edit recipes, save adjustments to ingredients, and add additional steps or tips to your preparation."
    },
    {
      "title": "All in one place",
      "subtitle":
          "Storing your recipes in Mallika allows you to quickly search, find, and select what you want to cook."
    },
    {
      "title": "Cook from your favorite device",
      "subtitle":
          "Mallika stores your recipes in the Cloud so you can access them on any device through our website or Android/iOS app."
    },
   
    
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          context.watch<CurrentPageforSplash>().currentPageforSplash == 0  
              ? Expanded(
                  child: Stack(
                    children: [
                        
                      Positioned(
                        top: getHeight(35),
                        right: getWidth(25),
                        child: SizedBox(
                          height: getHeight(28),
                          width: getWidth(56),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(getWidth(16)))),
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/", (route) => false);
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(fontSize: getHeight(12)),
                            ),
                          ),
                        ),
                      ) 
                    ],
                  ),
                )
              : context.watch<CurrentPageforSplash>().currentPageforSplash == 1 ?  Center() : Positioned(
                bottom: getHeight(50),
                right: getWidth(20),
                child: IconButton(onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
                }, icon: Icon(Icons.arrow_forward_outlined))),
          SizedBox(
            height: getHeight(465),
            width: getWidth(375),
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              pageSnapping: true,
              onPageChanged: (v) {
                context.read<CurrentPageforSplash>().setCurrentPage(v);
               
              },
              itemCount: pageList.length,
              itemBuilder: (context, index) {
                return _buildPageViewItem(pageList[index]['title'],
                    pageList[index]['subtitle'], context);
              },
            ),
          ),
          SizedBox(
            height: getHeight(50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageList.length, (i) {
              return Icon(
                context.watch<CurrentPageforSplash>().currentPageforSplash == i
                    ? Icons.circle_sharp
                    : Icons.circle_outlined,
                color: kOrange,
                size: 13,
              );
            }).toList(),
          ),
          SizedBox(
            height: getHeight(50),
          ),
        ],
      ),
    );
  }

  Widget _buildPageViewItem(
      String title, String subtitle, BuildContext context) {
    return Container(
      height: getHeight(478),
      width: getWidth(343),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getWidth(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getHeight(68),
            width: getWidth(68),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(34)),
            child: union
          ),
          SizedBox(
            height: getHeight(50.0),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: getWidth(24.0), fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: getHeight(12),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(32)),
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                )),
          ),
          SizedBox(
            height: getHeight(50),
          ),
        ],
      ),
    );
  }
}
