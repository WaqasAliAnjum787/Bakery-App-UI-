import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'buttons.dart';

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //taking the size of screen

    var mediaQuery = MediaQuery.of(context).size;
    double heightOfScreen = mediaQuery.height;
    double widthOfScreen = mediaQuery.width;
    double availableHeightOfScreen =
        heightOfScreen - (kBottomNavigationBarHeight + kToolbarHeight);
    double heightOfContainer = availableHeightOfScreen * 0.21;
    double widthOfContainer = widthOfScreen * 0.85;
    double heightOfChocolateHolderContainer = availableHeightOfScreen * 0.16;
    double heightForOrdersRow = availableHeightOfScreen * 0.08;
    double heightOfContainerLastOne = availableHeightOfScreen * 0.33;
    double widthOfContainerLastOne = widthOfScreen * 0.39;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: heightOfContainer,
              width: widthOfContainer,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(3, 3)),
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(-3, -3)),
                ],
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                        height: heightOfContainer * 1,
                        width: widthOfContainer * 0.5,
                        image: const AssetImage('assets/images/macrons.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cake The Great',
                            style: TextStyle(
                              fontSize: widthOfContainer * 0.07,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // Text('Special Offer',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.normal,
                        //     )),
                        Text(
                          "Use this code",
                          style: TextStyle(fontSize: widthOfContainer * 0.035),
                        ),
                        Text("'UDCPUMDP31B'",
                            style: TextStyle(
                              fontSize: widthOfContainer * 0.05,
                            )),
                        Text(
                          'And get 20% off',
                          style: TextStyle(fontSize: widthOfContainer * 0.035),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: availableHeightOfScreen * 0.08,
            child: Padding(
              padding: EdgeInsets.only(
                  left: widthOfScreen * 0.08, right: widthOfScreen * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your favorites products',
                    style: TextStyle(
                        fontSize: widthOfScreen * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: widthOfContainer * 0.06,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: heightOfChocolateHolderContainer,
            width: widthOfContainer,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      color: Colors.grey)
                ]),
            child: Row(children: [
              Column(children: [
                Image.asset(
                  'assets/images/chocolate.png',
                  height: heightOfChocolateHolderContainer * 1,
                  width: widthOfContainer * 0.43,
                )
              ]),
              SizedBox(
                  height: heightOfChocolateHolderContainer * 1,
                  width: widthOfContainer * 0.33,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: heightOfChocolateHolderContainer * 0.1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Chocolate Doughnut',
                            style: TextStyle(
                              fontSize: widthOfContainer * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "45 left         |    ",
                                style: TextStyle(
                                    fontSize: widthOfContainer * 0.035),
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 241, 220, 29),
                                size: widthOfContainer * 0.045,
                              ),
                              Text(
                                ' 5.0',
                                style: TextStyle(
                                    fontSize: widthOfContainer * 0.035),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '\$0.99',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: widthOfContainer * 0.045),
                              ),
                              Text(
                                '/per piece',
                                style: TextStyle(
                                    fontSize: widthOfContainer * 0.035),
                              )
                            ],
                          ),
                        ]),
                  )),
              SizedBox(
                height: heightOfChocolateHolderContainer * 1,
                width: widthOfContainer * 0.23,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: heightOfChocolateHolderContainer * 0.1,
                      bottom: heightOfChocolateHolderContainer * 0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: widthOfContainer * 0.065,
                      ),
                      Icon(
                        Icons.add_circle_outline_sharp,
                        color: Colors.amber,
                        size: widthOfContainer * 0.065,
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            height: heightForOrdersRow,
            child: Padding(
              padding: EdgeInsets.only(
                  left: widthOfScreen * 0.08, right: widthOfScreen * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Orders',
                    style: TextStyle(
                        fontSize: widthOfScreen * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                        fontSize: widthOfScreen * 0.035,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: widthOfScreen * 0.08, right: widthOfScreen * 0.08),
            child: SizedBox(
              height: availableHeightOfScreen * 0.04,
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(right: availableHeightOfScreen * 0.022),
                    child: MyButtons(
                        color: const Color.fromARGB(255, 241, 212, 212),
                        height: availableHeightOfScreen * 0.04,
                        width: widthOfScreen * 0.25,
                        text: Text('Cakes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: widthOfScreen * 0.035)),
                        child: Icon(
                          Icons.cake,
                          size: widthOfScreen * 0.045,
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: availableHeightOfScreen * 0.022),
                    child: MyButtons(
                        color: Color.fromARGB(255, 241, 212, 212),
                        height: availableHeightOfScreen * 0.04,
                        width: widthOfScreen * 0.25,
                        text: Text('Coffee',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: widthOfScreen * 0.035)),
                        child: Icon(
                          Icons.free_breakfast,
                          size: widthOfScreen * 0.045,
                        )),
                  ),
                  MyButtons(
                      color: const Color.fromARGB(255, 241, 212, 212),
                      height: availableHeightOfScreen * 0.04,
                      width: widthOfScreen * 0.25,
                      text: Text('Donuts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widthOfScreen * 0.035)),
                      child: Icon(
                        Icons.donut_large,
                        size: widthOfScreen * 0.045,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: availableHeightOfScreen * 0.02,
                left: widthOfScreen * 0.03,
                right: widthOfScreen * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Container(
                    height: heightOfContainerLastOne,
                    width: widthOfContainerLastOne,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(3, 3),
                            blurRadius: 8,
                            spreadRadius: 2,
                            color: Colors.grey),
                      ],
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: heightOfContainerLastOne * 0.04,
                            right: widthOfContainerLastOne * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              size: widthOfScreen * 0.050,
                            )
                          ],
                        ),
                      ),
                      Image(
                        image:
                            const AssetImage('assets/images/wheat_bread.png'),
                        height: heightOfContainerLastOne * 0.40,
                        width: widthOfContainerLastOne * 1,
                      ),
                      Text(
                        'Wheat Bread',
                        style: TextStyle(
                            fontSize: widthOfContainerLastOne * 0.105,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '30 left   | ',
                              style: TextStyle(
                                  fontSize: widthOfContainerLastOne * 0.09),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: widthOfContainerLastOne * 0.09,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                  fontSize: widthOfContainerLastOne * 0.09),
                            )
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$2.99 ',
                            style: TextStyle(
                                fontSize: widthOfContainerLastOne * 0.12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '/per piece',
                            style: TextStyle(
                                fontSize: widthOfContainerLastOne * 0.08),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: heightOfContainerLastOne * 0.04),
                        child: MyButtons(
                            color: Colors.yellow,
                            height: heightOfContainerLastOne * 0.13,
                            width: widthOfContainerLastOne * 0.6,
                            text: Text('Add to cart',
                                style: TextStyle(
                                    fontSize: widthOfContainerLastOne * 0.085,
                                    fontWeight: FontWeight.bold)),
                            child: Icon(
                              Icons.shopping_cart_checkout_outlined,
                              size: widthOfContainerLastOne * 0.099,
                            )),
                      )
                    ]),
                  )
                ]),
                Column(
                  children: [
                    Container(
                        height: heightOfContainerLastOne,
                        width: widthOfContainerLastOne,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Colors.grey)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightOfContainerLastOne * 0.04,
                                  right: widthOfContainerLastOne * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    size: widthOfScreen * 0.050,
                                  )
                                ],
                              ),
                            ),
                            Image(
                              image: const AssetImage(
                                  'assets/images/bread_one.png'),
                              height: heightOfContainerLastOne * 0.40,
                              width: widthOfContainerLastOne * 1,
                            ),
                            Text(
                              'Toast Bread',
                              style: TextStyle(
                                  fontSize: widthOfContainerLastOne * 0.105,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('45 left   | ',
                                      style: TextStyle(
                                          fontSize:
                                              widthOfContainerLastOne * 0.09)),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: widthOfContainerLastOne * 0.09,
                                  ),
                                  Text('4.8',
                                      style: TextStyle(
                                        fontSize:
                                            widthOfContainerLastOne * 0.09,
                                      ))
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '\$1.99 ',
                                  style: TextStyle(
                                      fontSize: widthOfContainerLastOne * 0.102,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '/per piece',
                                  style: TextStyle(
                                    fontSize: widthOfContainerLastOne * 0.09,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightOfContainerLastOne * 0.04),
                              child: MyButtons(
                                  color: Colors.yellow,
                                  height: heightOfContainerLastOne * 0.13,
                                  width: widthOfContainerLastOne * 0.6,
                                  text: Text('Add to cart',
                                      style: TextStyle(
                                          fontSize:
                                              widthOfContainerLastOne * 0.085,
                                          fontWeight: FontWeight.bold)),
                                  child: Icon(
                                    Icons.shopping_cart_checkout_outlined,
                                    size: widthOfContainerLastOne * 0.099,
                                  )),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
