import 'package:flutter/material.dart';
import 'package:natv_app/widgets/custom_textbutton.dart';
import 'package:natv_app/widgets/custom_textfield.dart';

import 'package:natv_app/widgets/steps_widget.dart';

class TickerAdView extends StatelessWidget {
  const TickerAdView({super.key});

  @override
  Widget build(BuildContext context) {
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
            const StepsWidget(number: '3', description: 'Оплатите объявление!'),
            const CustomTextField(
              labelText: 'Контактный номер',
              hintText: 'Пример: 0555123456',
              keyboardType: TextInputType.phone,
            ),
            const CustomTextField(
              labelText: 'E-mail',
              hintText: 'primer@mail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            const CustomTextField(
              labelText: 'Укажите фамилию и имя',
              hintText: 'Ф.И.О./ название организации',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                '*Поля не обязательны для заполнения. Укажите номер телефона и мы отправим Вам код для оплаты SMS сообщением.\n*Оплатите любым удобным способом!'),
            const SizedBox(
              height: 20,
            ),
            Align(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC20937)),
                  onPressed: () {},
                  child: Text(
                    'разместить объявление'.toUpperCase(),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            const CustomTextbutton(text: 'О проекте'),
            const CustomTextbutton(text: 'Способы оплаты'),
            const CustomTextbutton(text: 'Для юридических лиц'),
            const CustomTextbutton(text: 'Вопрос-ответ'),
            const CustomTextbutton(text: 'Видеоинструкция по размещению'),
            const CustomTextbutton(text: 'Договор публичной оферты'),
            const CustomTextbutton(text: 'Правила заполнения текста'),
          ],
        ),
      ),
    );
  }
}
