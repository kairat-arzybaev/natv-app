import 'package:flutter/material.dart';
import 'package:natv_app/models/channel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natv_app/repositories/api_repository.dart';
import 'package:natv_app/widgets/channel_widget.dart';
import 'package:natv_app/widgets/custom_elev_button.dart';
import 'package:natv_app/widgets/custom_textbutton.dart';

import 'package:natv_app/widgets/footer_widget.dart';

import 'package:natv_app/widgets/steps_widget.dart';
import 'package:natv_app/widgets/user_info.dart';

class TickerAdTab extends StatefulWidget {
  const TickerAdTab({super.key});

  @override
  State<TickerAdTab> createState() => _TickerAdTabState();
}

class _TickerAdTabState extends State<TickerAdTab> {
  late Future<List<Channel>> channelsFuture;
  final double sum = 1.0;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    channelsFuture = ApiRepository.getChannelsList();
  }

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
                children: [
                  Text(
                    'ВВЕДИТЕ ТЕКСТ ОБЪЯВЛЕНИЯ',
                    style: GoogleFonts.arimo(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 16,
                    ),
                  ),
                  Text('Символов: ${_controller.text.length}',
                      style: const TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: 16))
                ],
              ),
            ),
            TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  value = _controller.text;
                });
              },
              maxLines: 7,
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
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

            FutureBuilder(
                future: channelsFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        height: 1,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) => ChannelWidget(
                          channelName: snapshot.data![index].channelName,
                          sum: snapshot.data![index].pricePerLetter,
                          logo: snapshot.data![index].logo),
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                }),

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
            CustomTextbutton(text: 'This is for testing')
          ],
        ),
      ),
    );
  }
}
