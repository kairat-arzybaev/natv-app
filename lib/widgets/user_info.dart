import 'package:flutter/material.dart';

import 'custom_textfield.dart';

Widget userInfo() {
  return Column(children: const [
    SizedBox(
      height: 20,
    ),
    CustomTextField(
      labelText: 'Контактный номер',
      hintText: 'Пример: 0555123456',
      keyboardType: TextInputType.phone,
    ),
    CustomTextField(
      labelText: 'E-mail',
      hintText: 'primer@mail.com',
      keyboardType: TextInputType.emailAddress,
    ),
    CustomTextField(
      labelText: 'Укажите фамилию и имя',
      hintText: 'Ф.И.О./ название организации',
      keyboardType: TextInputType.name,
    ),
    Text(
        '*Поля не обязательны для заполнения. Укажите номер телефона и мы отправим Вам код для оплаты SMS сообщением.\n*Оплатите любым удобным способом!'),
  ]);
}
