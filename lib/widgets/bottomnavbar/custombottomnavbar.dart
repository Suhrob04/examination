
import 'package:mybigexam/constants/export_pages.dart';
import 'package:mybigexam/constants/icons.dart';
import 'package:mybigexam/providers/bottomnav_provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavProvider? model;
  BottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? home2 : home1,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? search2 : search1,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? cart2 : cart1,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? calendar2 : calendar1,
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _context.currentTab,
      onTap: (int idx) {
        model!.currentTab = idx;
      },
    );
  }
}