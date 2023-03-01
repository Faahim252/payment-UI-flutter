import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/widigts/textsize.dart';

class ReusebleClistbuilder extends StatefulWidget {
  const ReusebleClistbuilder({super.key});

  @override
  State<ReusebleClistbuilder> createState() => _ContainerListbuilderState();
}

class _ContainerListbuilderState extends State<ReusebleClistbuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      height: 130,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFd8dbe0),
                blurRadius: 20.0,
                offset: Offset(1, 1),
                spreadRadius: 10)
          ]),
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 3, color: Colors.red),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("lib/images/brand1.png"),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "salaam bank",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Id: 848177",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.idColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedText(
                    text: "Auto pay on 27th mars 10", color: AppColor.green),
                SizedBox(
                  height: 5,
                )
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.selectBackground,
                      ),
                      child: Center(
                        child: Text(
                          "Select",
                          style: TextStyle(
                              fontSize: 16, color: AppColor.selectColor),
                        ),
                      ),
                    ),
                    // waxaa u isticmaalaa space cadaan ah
                    Expanded(child: Container()),
                    Text(
                      "\$8481.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: AppColor.mainColor,
                      ),
                    ),
                    Text(
                      "Due in 3 days",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColor.idColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 5,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColor.halfOval,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
