import 'package:flutter/material.dart';
import 'package:app/theme.dart';
import 'package:app/common/link.dart';
import 'package:app/routes.dart';

class SignPage extends StatefulWidget {
  final String route;

  SignPage({ Key key, this.route }): super(key: key);

  _SignPageState createState() => _SignPageState();
}

const CONNEXION = 0;
const INSCRIPTION = 1;

class _SignPageState extends State<SignPage> {
  PageController _pageController;
  int _currentPage;

  int _resolveTargetPage(route) => route == SIGN_UP ? INSCRIPTION : CONNEXION;

  @override
  void initState() {
    super.initState();
    _currentPage = _resolveTargetPage(widget.route);
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goTo(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut
    );

    setState(() => _currentPage = page);
  }

  @override
  Widget build(BuildContext context) {
    setNotificationBar(THEME.dark);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Link(
                      text: 'Connexion',
                      isActive: _currentPage == CONNEXION,
                      onPressed: () => goTo(CONNEXION),
                    ),
                    Link(
                      text: 'Inscription',
                      isActive: _currentPage == INSCRIPTION,
                      onPressed: () => goTo(INSCRIPTION),
                    )
                  ]
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: [
                    SignInPage(),
                    SignUpPage()
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('<<<<Inscription>>> Yolo.');
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text("""<<<<Connexion>>> Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quidem hic expedita temporibus odio id repellendus autem sapiente dolorem nobis sint soluta officiis laboriosam molestiae quod nemo magnam magni ab.\n
      """)
    );
  }
}
