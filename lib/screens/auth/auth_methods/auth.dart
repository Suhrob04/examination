import 'package:mybigexam/constants/export_pages.dart';

class AuthForSignIn extends StatelessWidget {
  const AuthForSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(16)),
          child: SizedBox(
            height: getHeight(610),
            width: getWidth(375),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: getHeight(10.0),
                ),
                const Text(
                  "Mallika",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                SizedBox(
                  height: getHeight(10.0),
                ),
                const Text("Everyone can be a chef",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                SizedBox(
                  height: getHeight(25.0),
                ),
                _numberchoice(),
                SizedBox(
                  height: getHeight(10.0),
                ),
                _sendopt(context),
                SizedBox(
                  height: getHeight(20.0),
                ),
                _or(),
                SizedBox(
                  height: getHeight(20.0),
                ),
                const AuthMethods().build(context),
                SizedBox(
                  height: getHeight(50),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _numberchoice() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: IntlPhoneField(
        autoValidate: true,
        initialCountryCode: "+998",
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onChanged: (phone) {
          // * delete
          print(phone.completeNumber);
        },
        onCountryChanged: (phone) {
          // * delete
          print('Country code changed to: ');
        },
      ),
    );
  }

  _sendopt(context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, "/splash", (route) => false);
        },
        child: const Text("Send OTP"),
        style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(135), vertical: getHeight(14))));
  }

  _or() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: <Widget>[
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: const Divider(
                color: Colors.black,
                height: 36,
              )),
        ),
        const Text("OR"),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: const Divider(
                color: Colors.black,
                height: 36,
              )),
        ),
      ]),
    );
  }
}
