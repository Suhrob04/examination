import 'package:mybigexam/constants/export_pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign In"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              child: const Text("Sign Up"),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return AuthForSignIn();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
