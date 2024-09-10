import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool mainHeartPressed = false;
  bool lilFirstH = false;
  bool lilSecH = false;
  bool lilThirdH = false;
  bool lilFourthH = false;

  bool seeALlOrNot = false;
  bool seeCategoriesOrNot = false;

  Widget _seeAllBeauty() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 151,
            height: 205,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/square_placeholder.png",
                      height: 151,
                      width: 151,
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2.0),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(45.0),
                          onTap: () {
                            setState(() {
                              lilThirdH = !lilThirdH;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(
                              !lilThirdH
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: !lilThirdH ? Colors.grey : Colors.red,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Product Name",
                ),
                const Text(
                  "\$25.00",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            width: 151,
            height: 205,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/square_placeholder.png",
                      height: 151,
                      width: 151,
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2.0),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(45.0),
                          onTap: () {
                            setState(() {
                              lilFourthH = !lilFourthH;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(
                              !lilFourthH
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: !lilFourthH ? Colors.grey : Colors.red,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Product Name",
                ),
                const Text(
                  "\$25.00",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _seeAnotherBeauty() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Categories",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              seeCategoriesOrNot = true;
            });
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "see all",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _fantasticCategories() {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      height: 106,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _fantasticContainers(fantasticName: "Tech"),
          _fantasticContainers(fantasticName: "Fashion"),
          _fantasticContainers(fantasticName: "Gaming"),
        ],
      ),
    );
  }

  Widget _fantasticContainers(
      {required String fantasticName, VoidCallback? onPressed}) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          minimumSize: const Size(107.60, 86),
          backgroundColor: Colors.white,
          shadowColor: Colors.black.withOpacity(0.1),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the border radius as needed
          ),
        ),
        child: Center(
          child: Text(
            fantasticName,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            height: 36,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                labelText: "Search...",
              ),
            ),
          ),
          const Text(
            "Hello Jane",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "we have some recommendations for you",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Just for you",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    seeALlOrNot = true;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "see all",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 305,
                height: 295,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/image_placeholder.png",
                          height: 167,
                          width: 303,
                        ),
                        Positioned(
                          top: 10,
                          right: 15,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2.0),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(45.0),
                              onTap: () {
                                setState(() {
                                  mainHeartPressed = !mainHeartPressed;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  !mainHeartPressed
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: !mainHeartPressed
                                      ? Colors.grey
                                      : Colors.red,
                                  size: 23,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Product Name",
                    ),
                    const Text(
                      "\$25.00",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad. Krofask nystartsjobb det vill säga vinde. ",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Deals",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        seeALlOrNot = true;
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "see all",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 151,
                      height: 205,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "assets/square_placeholder.png",
                                height: 151,
                                width: 151,
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(45.0),
                                    onTap: () {
                                      setState(() {
                                        lilFirstH = !lilFirstH;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(
                                        !lilFirstH
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color: !lilFirstH
                                            ? Colors.grey
                                            : Colors.red,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Product Name",
                          ),
                          const Text(
                            "\$25.00",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 151,
                      height: 205,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "assets/square_placeholder.png",
                                height: 151,
                                width: 151,
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(45.0),
                                    onTap: () {
                                      setState(() {
                                        lilSecH = !lilSecH;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(
                                        !lilSecH
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color:
                                            !lilSecH ? Colors.grey : Colors.red,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Product Name",
                          ),
                          const Text(
                            "\$25.00",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              seeALlOrNot ? _seeAllBeauty() : const SizedBox.shrink(),
              _seeAnotherBeauty(),
              seeCategoriesOrNot
                  ? _fantasticCategories()
                  : const SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}
