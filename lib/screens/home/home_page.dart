import 'package:mybigexam/constants/export_pages.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  PageController pageController = PageController();
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
            HomeWidgets(
              title: "Hi Nararaya",
              subtitle: "What are you cooking today?",
              svgicon: "assets/icons/bell.svg",
            ),
            SizedBox(
              height: getHeight(25.5),
            ),
            HomeWidgets().cookbookPageview(context),
            
          ],
        ),
      ),
    );
  }
}
