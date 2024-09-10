import 'package:flutter/material.dart';
import 'package:muslimas_project/main_pages/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool onInitial = true;
  bool onLast = false;

  late Color buttonColor;
  final PageController _controller = PageController();

  @override
  void initState() {
    buttonColor = onInitial ? Colors.red : Colors.white;
    super.initState();
  }

  Widget _buildIntroPage(String image, String title) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/$image.png",
            height: 436,
            width: 430,
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            width: 340,
            height: 144,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          !onLast
              ? GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (c) => HomePage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "skip",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onInitial = (index == 0);
                onLast = (index == 2);
              });
            },
            children: [
              _buildIntroPage("first", "Shopping Online Products"),
              _buildIntroPage("second", "Fastest Delivery"),
              _buildIntroPage("third", "Contactless Delivery"),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: onInitial
                      ? null
                      : () {
                          _controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                  child: Text(
                    "prev",
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Colors.black),
                ),
                !onLast
                    ? TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          "next",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      )
                    : MaterialButton(
                        minWidth: 65,
                        height: 27,
                        shape: const StadiumBorder(),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (c) => HomePage()));
                        },
                        child: const Text(
                          "start",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
