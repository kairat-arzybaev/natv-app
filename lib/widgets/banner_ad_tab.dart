import 'package:flutter/material.dart';
import 'package:natv_app/widgets/custom_elev_button.dart';
import 'package:natv_app/widgets/footer_widget.dart';
import 'package:natv_app/widgets/steps_widget.dart';
import 'package:natv_app/widgets/user_info.dart';

class BannerAdTab extends StatefulWidget {
  const BannerAdTab({super.key});

  @override
  State<BannerAdTab> createState() => _BannerAdTabState();
}

class _BannerAdTabState extends State<BannerAdTab> {
  @override
  Widget build(BuildContext context) {
    var sizedBox20 = const SizedBox(
      height: 20,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 85,
              width: 120,
              child: Image.asset('assets/images/logo.png')),
          sizedBox20,
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            color: const Color(0xFFC20937),
            child: Text(
              'Загрузите графический файл'.toUpperCase(),
              style: const TextStyle(
                letterSpacing: 1.5,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 6, backgroundColor: Colors.white),
              child: const Text(
                'Выбрать файл',
                style: TextStyle(color: Color(0xFF737373)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 6, backgroundColor: Colors.white),
              child: Text(
                'Загрузить'.toUpperCase(),
                style: const TextStyle(color: Color(0xFFC20937), fontSize: 18),
              ),
            ),
          ),
          sizedBox20,
          const Text(
              'Рекомендуемый размер файла 720х576 пикс. или соотношение сторон 4:3\nОграничение по размеру файла 3 Мб. К закачке допустимы графические форматы PNG, JPG, GIF.'),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 80,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration:
                BoxDecoration(color: Colors.white, border: Border.all()),
            child: const Center(
              child: Text(
                'Предпросмотр',
                style: TextStyle(color: Color(0xFFd2d7da), fontSize: 28),
              ),
            ),
          ),
          const StepsWidget(
            number: '1',
            description: 'Загрузите  изображение',
          ),
          sizedBox20,
          const StepsWidget(
              number: '2',
              description:
                  'Выберите телеканалы и даты,\nи нажмите «Разместить баннер»'),
          sizedBox20,
          const StepsWidget(number: '3', description: 'Оплатите объявление!'),
          userInfo(),
          sizedBox20,
          const CustomElevButton(text: 'РАЗМЕСТИТЬ БАННЕР'),
          const SizedBox(
            height: 40,
          ),
          const Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          footerWidget()
        ]),
      ),
    );
  }
}
