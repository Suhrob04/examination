import 'package:mybigexam/constants/export_pages.dart';

class AuthMethods extends StatelessWidget {
  const AuthMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          buttonType: SocialLoginButtonType.apple,
          text: "Conitue with Apple",
          onPressed: () {},
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialLoginButton(
              buttonType: SocialLoginButtonType.facebook,
              onPressed: () {},
              width: getWidth(166),
              height: getHeight(53),
              disabledBackgroundColor: Colors.white,
              text: "Facebook",
              borderRadius: 10,
              mode: SocialLoginButtonMode.single,
            ),
            SocialLoginButton(
              width: getWidth(166),
              height: getHeight(53),
              buttonType: SocialLoginButtonType.google,
              onPressed: () {},
              mode: SocialLoginButtonMode.single,
              borderRadius: 10,
            ),
          ],
        ),
        SizedBox(
          height: getHeight(36.0),
        ),
        SizedBox(
          height: getHeight(40),
          width: getWidth(327),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "By continuing, you agree to our",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getWidth(12),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Terms of Service ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getWidth(12),
                      inherit: true,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " Privacy of Policy ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getWidth(12),
                      inherit: true,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " Conntent of Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getWidth(12),
                      inherit: true,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
