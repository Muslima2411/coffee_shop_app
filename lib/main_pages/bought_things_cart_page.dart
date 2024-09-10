import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFabulousCart extends StatefulWidget {
  const MyFabulousCart({Key? key}) : super(key: key);

  @override
  State<MyFabulousCart> createState() => _MyFabulousCartState();
}

class _MyFabulousCartState extends State<MyFabulousCart> {
  Widget _returnBoldText({required String txt}) {
    return Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }

  Widget _returnLilFancyText({required String txt}) {
    return Text(
      txt,
      style: const TextStyle(fontSize: 14),
    );
  }

  @override
  Widget build(BuildContext context) {
    int num_one = 0;
    int num_two = 10;
    int num_three = 0;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "My Cart",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/square_placeholder.png",
                    width: 120,
                    height: 125,
                  ),
                  Container(
                    width: 120,
                    height: 125,
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Product Name"),
                        _returnBoldText(txt: "\$25.00"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    --num_one;
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                  size: 30,
                                )),
                            Text("$num_one"),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    num_one = num_one + 1;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.add_circled_solid,
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/square_placeholder.png",
                    width: 120,
                    height: 125,
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Product Name"),
                        _returnBoldText(txt: "\$25.00"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  num_two--;
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                  size: 30,
                                )),
                            Text("$num_two"),
                            IconButton(
                                onPressed: () {
                                  ++num_two;
                                  setState(() {});
                                },
                                icon: const Icon(
                                  CupertinoIcons.add_circled_solid,
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/square_placeholder.png",
                    width: 120,
                    height: 125,
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Product Name"),
                        _returnBoldText(txt: "\$25.00"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    --num_three;
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                  size: 30,
                                )),
                            Text("$num_three"),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ++num_three;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.add_circled_solid,
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _returnBoldText(txt: "Cart total:"),
                  _returnBoldText(txt: "\$75.00"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _returnBoldText(txt: "Deliver to Leslie:"),
                  const Spacer(),
                  _returnLilFancyText(
                    txt: "2972 Westheimer Rd.",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  _returnLilFancyText(
                    txt: " Santa Ana, Illinois",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  _returnLilFancyText(
                    txt: "85486",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 40,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: const Color(0xFF525252),
                onPressed: () {},
                child: const Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
