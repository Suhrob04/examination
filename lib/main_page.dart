import 'package:mybigexam/constants/export_pages.dart';
import 'package:mybigexam/providers/bottomnav_provider.dart';
import 'package:mybigexam/widgets/bottomnavbar/custombottomnavbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavProvider>(
      create: (context) => BottomNavProvider(),
      child: Consumer<BottomNavProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: BottomNavBar(
            model: model,
          ),
        ),
      ),
      // builder: (context) => BottomProvier(),
    );
  }
}
