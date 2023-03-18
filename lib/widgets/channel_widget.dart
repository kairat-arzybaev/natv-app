// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChannelWidget extends StatelessWidget {
  const ChannelWidget({
    Key? key,
    required this.sum,
    required this.logo,
    required this.channelName,
  }) : super(key: key);

  final double sum;
  final String logo;
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 65,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Image.network(logo),
                ),
                Text(
                  channelName.toUpperCase(),
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: const [
                  Spacer(),
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 30,
                  )
                ],
              ),
            ),
            Text(
              '$sum сом',
              style: const TextStyle(fontSize: 18, color: Color(0xFF808084)),
            )
          ],
        ),
      ),
    );
  }
}
