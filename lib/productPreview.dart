import 'package:app_1/counter.dart';
import 'package:flutter/material.dart';

class ProductPreviewScreen extends StatelessWidget {
  const ProductPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              padding: const EdgeInsets.all(10),
              width: 328.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: const Icon(
                          IconData(0xe092, fontFamily: 'MaterialIcons'))),
                  Image.asset(
                    "icons/heart_solid.png",
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 65),
              child: Image.network(
                "https://s3-alpha-sig.figma.com/img/3993/b508/a9020b5032b9e862a1a4a2acd932fe9c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bSq2h8XLKDssHcf-wwAfDdMU0naOyVLXIJ4FOxVB5~Dl4W1JNriCu-Pnxn-icHbBKuy7nRV6bxdkXaFz3xiTx12XLftAH4f4ChA0LRfAobVQH0AE0o~Wpmmo4msbB9OTQKmGfQAVj9jsfX~wT2a3r~iviU3Sq~kOhE~9WWb0218NUmUXUv~TwDgcETbjugzJYjWwtuhQ1vaRVfTpmACAItrdA~gooN0P7yWVkqhoCXheaocpiRD7CAXo5W68k7tPRCDn-rxgfS7NbyR-FFR2KcxCeM6o~aeswYqvTelswDfpXPtrQ55S-JepE7gFVgSoaAya2oSdhSyddfTkOCanAA__",
                width: 287,
                height: 303,
              ),
            ),
            Container(
              width: 340,
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 44,
                    child: Text(
                      "Room Sofa",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  CounterScreen()
                ],
              ),
            ),
            Container(
              width: 52.02,
              margin: const EdgeInsets.only(right: 255, top: 15),
              alignment: Alignment.centerLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xff282828),
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xffC9A885),
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xff7993AE),
                  ),
                ],
              ),
            ),
            Container(
              width: 340,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.5,
                    fontFamily: "Hauora"),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("¥2500",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          fontFamily: "Hauora")),
                  TextButton(
                    onPressed: () => (),
                    child: Container(
                      width: 160,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF607D8B),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
