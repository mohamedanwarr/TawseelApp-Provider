import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
    super.key,
    required this.width,
    required this.height,
    required this.status,
  });

  final double width;
  final double height;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: kBorderColor,
                spreadRadius: 1,
                blurRadius: 1,
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    status,
                    style: Styles.textStyle16.copyWith(
                      color: status == "ملغية"
                          ? Colors.red
                          : status == "مكتمل"
                              ? Colors.green
                              : Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "رقم الطلب#25414",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.85,
                child: const Divider(
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شارع44 - السبتية - القاهرة",
                    style: Styles.textStyle14,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.deepOrange,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "11:00 , 20/10/2021",
                    style: Styles.textStyle12,
                  ),
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "30ج.م ",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " : التكلفة",
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
