import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/widigts/button.dart';
import 'package:payment_app/widigts/large_button.dart';
import 'package:payment_app/widigts/paymentlistbuilder.dart';

class paymentPage extends StatelessWidget {
  const paymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    double width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, right: 20, left: 20),
        height: height1,
        width: width1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage("lib/images/paymentbackground.png"),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: height1 * 0.14,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("lib/images/success.png"),
                ),
              ),
            ),
            Text(
              "Success !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
            ),
            Text(
              "Payment is completed for 3 bills",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(
              height: height1 * 0.05,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return PaymentListbuilder();
                  },
                ),
              ),
            ),
            SizedBox(
              height: height1 * 0.025,
            ),
            Column(
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.idColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$16962.00",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: height1 * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Appbuttons(
                  icon: Icons.share_sharp,
                  ontap: () {},
                  text: "Share",
                ),
                SizedBox(
                  width: height1 * 0.06,
                ),
                Appbuttons(
                  icon: Icons.print_outlined,
                  ontap: () {},
                  text: "print",
                ),
              ],
            ),
            SizedBox(
              height: height1 * 0.02,
            ),
            ApplargeButton(
              text: "Done",
              backgroundColor: Colors.white,
              textColor: AppColor.mainColor,
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
