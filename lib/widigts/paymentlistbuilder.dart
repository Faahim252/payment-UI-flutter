import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class PaymentListbuilder extends StatelessWidget {
  const PaymentListbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, bottom: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green,
                ),
                child: Icon(
                  Icons.done,
                  size: 30,
                  color: Colors.white,
                ),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Id: 848177",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.idColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColor.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$8481.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColor.mainColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
