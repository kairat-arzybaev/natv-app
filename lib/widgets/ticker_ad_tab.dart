import 'package:flutter/material.dart';
import 'package:natv_app/widgets/custom_elev_button.dart';

import 'package:natv_app/widgets/footer_widget.dart';

import 'package:natv_app/widgets/steps_widget.dart';
import 'package:natv_app/widgets/user_info.dart';

class TickerAdTab extends StatefulWidget {
  const TickerAdTab({super.key});

  @override
  State<TickerAdTab> createState() => _TickerAdTabState();
}

class _TickerAdTabState extends State<TickerAdTab> {
  @override
  Widget build(BuildContext context) {
    var sizedBox20 = const SizedBox(height: 20);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 85,
                width: 120,
                child: Image.asset('assets/images/logo.png')),
            sizedBox20,
            Container(
              width: double.infinity,
              height: 90,
              color: const Color(0xFFC20937),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'ВВЕДИТЕ ТЕКСТ ОБЪЯВЛЕНИЯ',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                  ),
                  Text('Символов: ',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14))
                ],
              ),
            ),
            const TextField(
              maxLines: 7,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  hintText: 'Отдам даром 0 789 545654'),
            ),
            const SizedBox(
              height: 40,
            ),
            const StepsWidget(
              number: '1',
              description: 'Введите текст вашего объявления',
            ),
            sizedBox20,
            const StepsWidget(
                number: '2',
                description:
                    'Выберите телеканалы и даты, и \nнажмите"Разместить объявление"'),
            sizedBox20,
            const StepsWidget(number: '3', description: 'Оплатите объявление!'),
            // List of channels
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Image.network(
                              'https://natv.kg/cache/files/1305.jpg_w130_h65_resize.jpg'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('HTC')
                      ],
                    ),
                    Container(
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
                    const Text(
                      '0.0 сом',
                      style: TextStyle(fontSize: 18, color: Color(0xFF808084)),
                    )
                  ],
                ),
              ),
            ),

            userInfo(),
            sizedBox20,
            const CustomElevButton(text: 'РАЗМЕСТИТЬ ОБЪЯВЛЕНИЕ'),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            footerWidget(),
          ],
        ),
      ),
    );
  }
}
