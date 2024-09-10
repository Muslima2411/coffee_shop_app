import 'package:flutter/material.dart';

class WoWPage extends StatefulWidget {
  const WoWPage({super.key});

  @override
  State<WoWPage> createState() => _WoWPageState();
}

class _WoWPageState extends State<WoWPage> {
  bool addedToCart = false;
  bool isLikedOrNot = false;
  bool seeMoreReviewsOrNot = false;

  Widget _fantasticPplContainer({required String fantasticName}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      "assets/profile_icon.png",
                      width: 42,
                      height: 42,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _returnBoldText(txt: fantasticName),
                      const SizedBox(
                        height: 6,
                      ),
                      Image.asset("assets/five_stars.png"),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              _returnBoldText(txt: "01/01/2021"),
            ],
          ),
          _returnBoldText(txt: "Amazing Product"),
          _returnLilFancyText(
              txt:
                  "Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad. Krofask nystartsjobb det vill säga vinde.   Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad."),
        ],
      ),
    );
  }

  Widget _returnBoldText({required String txt}) {
    return Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }

  Widget _returnLilFancyText({required String txt}) {
    return Text(
      txt,
      style: const TextStyle(fontSize: 12),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 205,
            child: Stack(
              children: [
                PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/image_placeholder.png",
                        fit: BoxFit.cover,
                        width: 430,
                        height: 204,
                      ),
                    ),
                    Positioned.fill(
                      child: Image.asset(
                        "assets/image_placeholder.png",
                        fit: BoxFit.cover,
                        width: 430,
                      ),
                    ),
                    Positioned.fill(
                      child: Image.asset(
                        "assets/image_placeholder.png",
                        fit: BoxFit.cover,
                        width: 430,
                      ),
                    ),
                  ],
                ),
                // Positioned(
                //   bottom:
                //       0, // Set bottom to position the container at the bottom
                //   child: Container(
                //     margin: EdgeInsets.symmetric(horizontal: 180),
                //     width: 66,
                //     height: 8,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         MaterialButton(
                //           shape: const CircleBorder(),
                //           minWidth: 30,
                //           height: 30,
                //           color: Colors.red,
                //           onPressed: () {},
                //         ),
                //         MaterialButton(
                //           shape: const CircleBorder(),
                //           minWidth: 30,
                //           height: 30,
                //           color: Colors.grey,
                //           onPressed: () {},
                //         ),
                //         MaterialButton(
                //           shape: const CircleBorder(),
                //           minWidth: 30,
                //           height: 30,
                //           color: Colors.grey,
                //           onPressed: () {},
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Positioned(
                  top: 11,
                  right: 14,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45.0),
                      onTap: () {
                        setState(() {
                          isLikedOrNot = !isLikedOrNot;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          !isLikedOrNot
                              ? Icons.favorite_border
                              : Icons.favorite,
                          color: !isLikedOrNot ? Colors.grey : Colors.red,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _returnBoldText(txt: "Product Name"),
                    _returnBoldText(txt: "\$25.00"),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                _returnLilFancyText(
                    txt:
                        "Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad. Krofask nystartsjobb det vill säga vinde.   Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad."),
                const SizedBox(
                  height: 25,
                ),
                !addedToCart
                    ? MaterialButton(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {
                          setState(() {
                            addedToCart = !addedToCart;
                          });
                        },
                        minWidth: double.infinity,
                        height: 39,
                        color: const Color(0xFF525252),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                            Spacer(),
                            Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                          ],
                        ),
                      )
                    : MaterialButton(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {},
                        minWidth: double.infinity,
                        height: 39,
                        color: const Color(0xFFEAEAEA),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.done_outline,
                              size: 12,
                              color: Colors.black,
                            ),
                            Spacer(),
                            Text(
                              "Added to Cart",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _returnBoldText(txt: "Reviews"),
                    const SizedBox(
                      height: 25,
                    ),
                    _fantasticPplContainer(fantasticName: "Jane Cooper"),
                    _fantasticPplContainer(fantasticName: "Lance Alot"),
                    _fantasticPplContainer(fantasticName: "Sue Grafton"),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                !seeMoreReviewsOrNot
                    ? MaterialButton(
                        color: Colors.white,
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        height: 39,
                        minWidth: double.infinity,
                        onPressed: () {
                          setState(() {
                            seeMoreReviewsOrNot = !seeMoreReviewsOrNot;
                          });
                        },
                        child: const Text(
                          "See more views",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    : _fantasticPplContainer(
                        fantasticName: "Muslima Nurullayeva"),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
