
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'get_started.dart';
import 'login.dart';

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (20),
              vertical: (20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {

                      setState(() {
                        _pageController.animateToPage(_pageIndex = 1, duration: Duration(milliseconds: 2), curve: Curves.easeInOut);
                      });

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetStarted(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xff604AED),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Regular',
                          ),
                        ),
                        Icon(
                          Icons.fast_forward_outlined,
                          color: Color.fromRGBO(96, 74, 237, 100),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: (70)),
              Expanded(
                child: PageView.builder(
                  itemCount: data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: data[index].image,
                    headline: data[index].headline,
                    description: data[index].description,
                  ),
                ),
              ),
              SizedBox(
                height: (24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    data.length,
                        (index) => DotIndicator(isActive: index == _pageIndex),
                  ),
                ],
              ),
              SizedBox(
                height: (58),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: _pageIndex > 0 ? TextButton(
                        onPressed: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_sharp,
                              size: (16),
                            ),
                            Text(
                              "Back",
                              style: TextStyle(
                                fontSize: (16),
                                fontFamily:'Giliroy-Bold',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ) : null
                  ),
                  SizedBox(
                    height: (50),
                    width: (91),
                    child: Padding(
                        padding: EdgeInsets.all(0),
                        child:_pageIndex <= 1 ? TextButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                            if (_pageIndex==1){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));
                            }
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff604AED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            textStyle: TextStyle(
                              fontSize: (16),
                              fontFamily:'Giliroy',
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                              ),
                              SizedBox(
                                width: (8),
                              ),
                              Icon(
                                Icons.arrow_forward_sharp,
                                size: (16),
                              ),
                            ],
                          ),
                        ) : null
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      duration: Duration(milliseconds: 300),
      height: (12),
      width: isActive
          ? (32)
          : (12),
      decoration: BoxDecoration(
        color: isActive
            ? Color(0xff604AED)
            : Color(0xffDFDBFB),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}

class Onboard {
  final image, headline, description;

  Onboard({
    required this.image,
    required this.headline,
    required this.description,
  });
}

final List<Onboard> data = [
  Onboard(
      image: AssetImage('images/image.png'),
      headline: [
        Text(
          "Cryptocurrency to",
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Gilroy-Bold',
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          " Fiat",
          style: TextStyle(
            color: Color(0xff604AED),
            fontFamily: 'Gilroy-Bold',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
      description:
      "You can convert any of your cryptocurrencies \n to any fiat currency of your locality seamlessly \n and hassle free. "),
  Onboard(
    image: AssetImage('images/Coins-amico 1.png'),
    headline: [
      Text(
        "Low",
        style: TextStyle(
            color: Color(0xff604AED),
            fontFamily: 'Gilroy-Bold',
            fontWeight: FontWeight.bold,
            fontSize: 24
        ),
      ),
      Text(
        " Transaction Fee",
        style: TextStyle(
            fontFamily: 'Gilroy-Bold',
            fontWeight: FontWeight.bold,
            fontSize: 24

        ),
      )
    ],
    description:
    "Absolutely no hidden or extra charges when \n converting your cryptocurrency to fiat and \n withdrawal of your fiats ",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    required this.image,
    required this.headline,
    required this.description,
  });

  final image, headline, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: image,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: headline,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffB5B5B5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'Gilroy-Regular',
          ),
        ),
      ],
    );
  }
}