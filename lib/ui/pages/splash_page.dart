part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Height is ${MediaQuery.of(context).size.height}');
    print('Width is ${MediaQuery.of(context).size.width}');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 136,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 16),
                child: Text(
                  "New Experience",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              Text(
                "Watch a new movie much\neasier than any before",
                style: greyTextFont.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 260,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                  ),
                  child: Text(
                    "Get Started",
                    style: whiteTextFont.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    context
                        .read<PageBloc>()
                        .add(GoToRegistrationPage(RegistrationData()));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<PageBloc>().add(GoToLoginPage());
                      print("Go To Login Page");
                    },
                    child: Text(
                      "Sign In",
                      style: purpleTextFont,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
