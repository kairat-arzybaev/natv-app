import 'package:flutter/material.dart';

import 'package:natv_app/widgets/steps_widget.dart';

class TickerAdView extends StatelessWidget {
  const TickerAdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 85,
              width: 120,
              child: Image.asset('assets/images/logo.png')),
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 15,
          ),
          const StepsWidget(
              number: '2',
              description:
                  'Выберите телеканалы и даты, и \nнажмите"Разместить объявление"'),
          const SizedBox(
            height: 15,
          ),
          const StepsWidget(number: '3', description: 'Оплатите объявление!')
        ],
      ),
    );
  }
}
