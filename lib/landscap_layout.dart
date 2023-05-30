import 'package:first_damo/buttons.dart';
import 'package:flutter/material.dart';

class LandScapeLayout extends StatelessWidget {
  const LandScapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var myScreenSize = MediaQuery.of(context).size;
    double heightOfScreen = myScreenSize.height;
    double widthOfScreen = myScreenSize.width;
    double originalHeightOfScreen =
        heightOfScreen - (kBottomNavigationBarHeight + kToolbarHeight);
    double heightOfContainer = originalHeightOfScreen * 0.3;
    double widthOfContainer = widthOfScreen * 0.93;
    double heightOfTheRow = originalHeightOfScreen * 0.50;
    double widthOfTheRow = widthOfContainer;
    double widthOfContainerFirst = widthOfTheRow / 2;
    double heightOfSubContainer = heightOfTheRow * 0.5;
    double widthOfChocolateHolderContainer = heightOfTheRow * 0.75;
    double heightOfChocolateHolderContainer = heightOfTheRow * 0.25;

    return Padding(
      padding: EdgeInsets.all(originalHeightOfScreen * 0.03),
      child: Center(
        child: Column(
          children: [
            Container(
              height: heightOfContainer,
              width: widthOfContainer,
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(3, 3),
                        blurRadius: 8,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                        height: heightOfContainer * 1,
                        width: widthOfContainer * 0.2,
                        image: const AssetImage('assets/images/macrons.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Cake The Great',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Use this code"),
                        Text("'UDCPUMDP31B'",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Text('And get 20% off'),
                      ],
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: originalHeightOfScreen * 0.035),
              child: SizedBox(
                  height: heightOfTheRow,
                  width: widthOfTheRow,
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          height: heightOfTheRow * 0.25,
                          width: widthOfTheRow * 0.5,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Your favorites products',
                                  style: TextStyle(
                                      fontSize: widthOfContainerFirst * 0.045,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  size: widthOfContainerFirst * 0.06,
                                ),
                              ]),
                        ),
                        Container(
                          height: heightOfTheRow * 0.75,
                          width: widthOfContainerFirst,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3, 3),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Row(children: [
                            Column(children: [
                              Image.asset(
                                'assets/images/chocolate.png',
                                height: heightOfTheRow * 0.75,
                                width: widthOfContainerFirst * 0.43,
                              )
                            ]),
                            Column(children: [
                              Container(
                                height: heightOfTheRow * 0.75,
                                width: widthOfContainerFirst * 0.33,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: heightOfSubContainer * 0.304),
                                  child: Center(
                                    child: Column(children: [
                                      Text(
                                        'Chocolate Doughnut',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                widthOfChocolateHolderContainer *
                                                    0.125),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '45 left     |   ',
                                            style: TextStyle(
                                                fontSize:
                                                    widthOfChocolateHolderContainer *
                                                        0.11),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromARGB(
                                                255, 248, 224, 3),
                                            size: widthOfContainerFirst * 0.045,
                                          ),
                                          const Text('5.0'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$0.99',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    widthOfContainerFirst *
                                                        0.045),
                                          ),
                                          Text(
                                            '/per piece',
                                            style: TextStyle(
                                                fontSize:
                                                    widthOfContainerFirst *
                                                        0.035),
                                          )
                                        ],
                                      ),
                                    ]),
                                  ),
                                ),
                              )
                            ]),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: widthOfChocolateHolderContainer * 0.25,
                                  top: heightOfChocolateHolderContainer * 0.10,
                                  bottom:
                                      heightOfChocolateHolderContainer * 0.50),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top:
                                              heightOfChocolateHolderContainer *
                                                  0.30),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: widthOfChocolateHolderContainer *
                                            0.18,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_circle_outline_sharp,
                                      color: Colors.amber,
                                      size: widthOfChocolateHolderContainer *
                                          0.18,
                                    )
                                  ]),
                            ),
                          ]),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: originalHeightOfScreen * 0.03,
                              left: widthOfScreen * 0.029),
                          child: Container(
                            height: heightOfTheRow * 0.15,
                            width: widthOfTheRow * 0.457,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyButtons(
                                    color: const Color.fromARGB(
                                        255, 241, 212, 212),
                                    height: originalHeightOfScreen * 0.1,
                                    width: widthOfScreen * 0.09,
                                    text: const Text('Cake'),
                                    child: const Icon(Icons.cake_outlined)),
                                MyButtons(
                                    color: const Color.fromARGB(
                                        255, 241, 212, 212),
                                    height: originalHeightOfScreen * 0.1,
                                    width: widthOfScreen * 0.09,
                                    text: const Text('Coffee'),
                                    child: const Icon(Icons.free_breakfast)),
                                MyButtons(
                                    color: const Color.fromARGB(
                                        255, 241, 212, 212),
                                    height: originalHeightOfScreen * 0.1,
                                    width: widthOfScreen * 0.09,
                                    text: const Text('Donuts'),
                                    child: const Icon(Icons.donut_large)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: heightOfTheRow * 0.04,
                              left: widthOfTheRow * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(children: [
                                Container(
                                  height: heightOfTheRow * 0.75,
                                  width: widthOfTheRow * 0.212,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(3, 3),
                                            color: Colors.grey,
                                            blurRadius: 8,
                                            spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top:
                                                heightOfChocolateHolderContainer *
                                                    0.04,
                                            right:
                                                widthOfChocolateHolderContainer *
                                                    0.04),
                                      ),
                                      Image(
                                        image: const AssetImage(
                                            'assets/images/wheat_bread.png'),
                                        height:
                                            heightOfChocolateHolderContainer *
                                                1.45,
                                        width:
                                            widthOfChocolateHolderContainer * 1,
                                      ),
                                      Text(
                                        'Toast Bread',
                                        style: TextStyle(
                                            fontSize:
                                                widthOfChocolateHolderContainer *
                                                    0.105,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('45 left   | ',
                                                style: TextStyle(
                                                    fontSize:
                                                        widthOfChocolateHolderContainer *
                                                            0.09)),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black,
                                              size:
                                                  widthOfChocolateHolderContainer *
                                                      0.09,
                                            ),
                                            Text('4.8',
                                                style: TextStyle(
                                                  fontSize:
                                                      widthOfChocolateHolderContainer *
                                                          0.09,
                                                ))
                                          ]),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$1.99 ',
                                            style: TextStyle(
                                                fontSize:
                                                    widthOfChocolateHolderContainer *
                                                        0.102,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '/per piece',
                                            style: TextStyle(
                                              fontSize:
                                                  widthOfChocolateHolderContainer *
                                                      0.09,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top:
                                                heightOfChocolateHolderContainer *
                                                    0.04),
                                        child: MyButtons(
                                            color: Colors.yellow,
                                            height:
                                                heightOfChocolateHolderContainer *
                                                    0.43,
                                            width:
                                                widthOfChocolateHolderContainer *
                                                    0.6,
                                            text: Text('Add to cart',
                                                style: TextStyle(
                                                    fontSize:
                                                        widthOfChocolateHolderContainer *
                                                            0.085,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            child: Icon(
                                              Icons
                                                  .shopping_cart_checkout_outlined,
                                              size:
                                                  widthOfChocolateHolderContainer *
                                                      0.099,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                              SizedBox(
                                width: widthOfTheRow * 0.04,
                              ),
                              Column(children: [
                                Container(
                                  height: heightOfTheRow * 0.75,
                                  width: widthOfTheRow * 0.22,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(3, 3),
                                            color: Colors.grey,
                                            blurRadius: 8,
                                            spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Column(children: [
                                    Image(
                                      image: const AssetImage(
                                          'assets/images/bread_one.png'),
                                      height: heightOfChocolateHolderContainer *
                                          1.40,
                                      width:
                                          widthOfChocolateHolderContainer * 1,
                                    ),
                                    Text(
                                      'Wheat Bread',
                                      style: TextStyle(
                                          fontSize:
                                              widthOfChocolateHolderContainer *
                                                  0.105,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '30 left   | ',
                                            style: TextStyle(
                                                fontSize:
                                                    widthOfChocolateHolderContainer *
                                                        0.09),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.black,
                                            size:
                                                widthOfChocolateHolderContainer *
                                                    0.09,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                fontSize:
                                                    widthOfChocolateHolderContainer *
                                                        0.09),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$2.99 ',
                                          style: TextStyle(
                                              fontSize:
                                                  widthOfChocolateHolderContainer *
                                                      0.12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '/per piece',
                                          style: TextStyle(
                                              fontSize:
                                                  widthOfChocolateHolderContainer *
                                                      0.08),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top:
                                              heightOfChocolateHolderContainer *
                                                  0.05),
                                      child: MyButtons(
                                          color: Colors.yellow,
                                          height:
                                              heightOfChocolateHolderContainer *
                                                  0.43,
                                          width:
                                              widthOfChocolateHolderContainer *
                                                  0.6,
                                          text: Text('Add to cart',
                                              style: TextStyle(
                                                  fontSize:
                                                      widthOfChocolateHolderContainer *
                                                          0.085,
                                                  fontWeight: FontWeight.bold)),
                                          child: Icon(
                                            Icons
                                                .shopping_cart_checkout_outlined,
                                            size:
                                                widthOfChocolateHolderContainer *
                                                    0.099,
                                          )),
                                    ),
                                  ]),
                                )
                              ]),
                            ],
                          ),
                        )
                      ],
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
