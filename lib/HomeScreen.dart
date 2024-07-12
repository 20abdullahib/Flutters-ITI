import 'package:app_1/cards.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home Screen'),
        ),
        body:
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Find the home furniture',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {},
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: const Color(0xff7993AE),
                              ),
                              width: 72,
                              height: 115,
                              child: const Text(
                                "All",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Hauora"),
                              )),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: const Color(0xffCFCFCF),
                            ),
                            width: 70,
                            height: 90,
                            child: const Icon(
                              Icons.chair,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: const Color(0xffCFCFCF),
                            ),
                            width: 70,
                            height: 90,
                            child: const Icon(Icons.tv),
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: const Color(0xffCFCFCF),
                            ),
                            width: 70,
                            height: 90,
                            child: const Icon(Icons.light),
                          ),
                        ],
                      ),
                      // GridView(
                      //   gridDelegate:
                      //       const SliverGridDelegateWithFixedCrossAxisCount(
                      //     crossAxisCount: 2,
                      //     mainAxisSpacing: 10,
                      //     crossAxisSpacing: 10,
                      //     childAspectRatio: 0.75,
                      //   ),
                      //   children: [],
                      // ),
                      buildProductCard(
                          context,
                          'https://s3-alpha-sig.figma.com/img/3993/b508/a9020b5032b9e862a1a4a2acd932fe9c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bSq2h8XLKDssHcf-wwAfDdMU0naOyVLXIJ4FOxVB5~Dl4W1JNriCu-Pnxn-icHbBKuy7nRV6bxdkXaFz3xiTx12XLftAH4f4ChA0LRfAobVQH0AE0o~Wpmmo4msbB9OTQKmGfQAVj9jsfX~wT2a3r~iviU3Sq~kOhE~9WWb0218NUmUXUv~TwDgcETbjugzJYjWwtuhQ1vaRVfTpmACAItrdA~gooN0P7yWVkqhoCXheaocpiRD7CAXo5W68k7tPRCDn-rxgfS7NbyR-FFR2KcxCeM6o~aeswYqvTelswDfpXPtrQ55S-JepE7gFVgSoaAya2oSdhSyddfTkOCanAA__',
                          'Room Sofa',
                          '¥2500'),
                      buildProductCard(
                          context,
                          'https://s3-alpha-sig.figma.com/img/bd1b/48b3/d63a50665c28ca5301405af7c3fe8c79?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AAt-XfXLXzLMQj9taYeoQUMH43nI2hdDaK-3ebEwkotXDFpqWMXRMARePPm0-PlAsdSdbwTG-74arV2MTT90o722tU~7fuiJ0LKRJ93-7FO0bgb2jDywHwDV8rjL~45HX8TcIDnLAV4z9eHpAIqGJM1TdKEh3NYWasknZL42cpXClo0dXrcfvJLu6IUpIWyVsiq8AbWMo-DNugYl9Q8XC8oSIqb0I3GbRHKgKYVI4GqMKpfUk6Bkag6-Z7YqNO12T7VIkU88oXixNhXSIxk26~RJzHLiWeH8LqHcsQz-6eI9rNLcliFW0Jw3Py6RDh3XIFGth0kFwG7ZuBuM20x2RA__',
                          'Toshiba TV',
                          '¥35250'),
                      buildProductCard(
                          context,
                          'https://s3-alpha-sig.figma.com/img/9b63/727d/bad7fd5b1e56a7060c1c376249247df5?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cszEofC9Z0S8JeMw~rtt5GVQ6lg1Z1mOmjtjVp6RCelSnYaUlGdj9ljD4WNWCUy-cUPgOqJiRw~2XoHEpXk3F1rtZFuq4rkQsk0h58m7LWtnvy16nTtysv1CgeaN~tIDZXMrjA9pKLFETAFPvIqaU6qwZk25wvLjOylP2cQ8CyV5w~KYYzfjMLRm1V7FLllTFZHIQgFsc564MDYTOFxX-xmrIIXZWfkUNQ~1jtt3W9uUv2hJsLNBfIHxeNzXE1SeDPiv~PgKl~HabX5k1kGZYScIyRLxBEq5RksbCYyz63fdOWbRWy9LNJX9vwIjaz~78PQMYMXHWqPVUSKBnzGE7w__',
                          'Room Sofa',
                          '¥2500'),
                      buildProductCard(
                          context,
                          'https://s3-alpha-sig.figma.com/img/3450/5dcc/b6fc3f3c37a60a2c404b2a3c3ca04555?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HGPmKPr4yyshSZ1rn-kdShZXHTR0WMssOEfw7PNH7qe9bMLO4Oslgt0OOL9ZC0f7vzmGjqNbYhjr2msx-vpM0gtT9C94BRK5VMDvhrSW2~jCle0geGERvOAqXJyAXDePBzX-e~cbjnq812ovDTQlhSLv7QIP38NAOPEtBiH80uwk1JBHbAOHoVwFYJEe~Xe28SuImXlDp~0EtG~UhTPyd8bXPubJyae9ZEhTIxkOg2HbIcEhBi1F8rxhg0WveO~61P9YDpn57CY3yVne4yXrbtbKtXlY~7egpa3sQolur81RZFI0osel4n8yKiL09W6SyecksNXJZ30d7tTa-ReR8A__',
                          'Toshiba TV',
                          '¥35250'),
                    ],
                  ),
                )));
  }
}
