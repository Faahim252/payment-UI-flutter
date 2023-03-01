import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/pages/payment_page.dart';
import 'package:payment_app/widigts/button.dart';
import 'package:payment_app/widigts/large_button.dart';
import 'package:payment_app/widigts/listbuildercontainer.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    double width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: height1,
        child: Stack(
          children: [
            _headsection(),
            Listbills(),
            _paybutton(),
          ],
        ),
      ),
    );
  }

  _headsection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainbackground(),
          _curveImage(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }

  _mainbackground() {
    return Positioned(
      bottom: 50,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("lib/images/background.png"),
        )),
      ),
    );
  }

  _curveImage() {
    return Positioned(
        left: 0,
        right: 1,
        bottom: 29,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("lib/images/curve.png"),
            ),
          ),
        ));
  }

  _buttonContainer() {
    return Positioned(
        right: 10,
        bottom: 70,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 200,
                    child: Stack(children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          color: Color(0xFFeef1f4).withOpacity(0.7),
                          height: MediaQuery.of(context).size.height - 245,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.only(top: 5, bottom: 25),
                            height: 250,
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColor.mainColor,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Appbuttons(
                                  icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  ontap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                Appbuttons(
                                  icon: Icons.add,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  ontap: () {},
                                  text: "Add bill",
                                ),
                                Appbuttons(
                                  icon: Icons.history,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  ontap: () {},
                                  text: "History",
                                )
                              ],
                            ),
                          ))
                    ]),
                  );
                });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("lib/images/lines.png")),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 1),
                    color: Color(0xFF11324d).withOpacity(0.2),
                  )
                ]),
          ),
        ));
  }

  Listbills() {
    return Positioned(
      top: 320,
      left: 0,
      bottom: 0,
      right: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (_, index) {
              return ReusebleClistbuilder();
            }),
      ),
    );
  }

  _paybutton() {
    return Positioned(
      bottom: 20,
      child: ApplargeButton(
        text: "Pay bills",
        textColor: Colors.white,
        onTap: () {
          Get.to(() => paymentPage());
        },
      ),
    );
  }

  _textContainer() {
    return Stack(
      children: [
        Positioned(
          left: 25,
          top: 100,
          child: Text(
            "My Bills",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF293952),
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 80,
          child: Text(
            "My Bills",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
