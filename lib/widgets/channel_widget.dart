// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../models/channel.dart';

class ChannelWidget extends StatefulWidget {
  const ChannelWidget({
    Key? key,
    required this.pricePerLetter,
    this.symbolsCount = 0,
    required this.channel,
  }) : super(key: key);

  final double pricePerLetter;
  final int symbolsCount;
  final TVChannel channel;

  @override
  State<ChannelWidget> createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> {
  final DateRangePickerController _controller = DateRangePickerController();

  int _dateCount = 0;

  double orderPrice = 0.0;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _dateCount = args.value.length;
      orderPrice = _dateCount * widget.pricePerLetter * widget.symbolsCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<Widget>(
            context: context,
            builder: (BuildContext context) {
              return SfDateRangePicker(
                controller: _controller,
                backgroundColor: Colors.white,
                monthViewSettings: const DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 1, numberOfWeeksInView: 4),
                viewSpacing: 20,
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.multiple,
                confirmText: 'Сохранить',
                cancelText: 'Отмена',
                showActionButtons: true,
                onSubmit: (value) {
                  Navigator.pop(context);
                },
                onCancel: () {
                  Navigator.pop(context);
                },
              );
            });
      },
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
                  child: Image.network(widget.channel.logo),
                ),
                Text(
                  widget.channel.channelName.toUpperCase(),
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
              '$orderPrice сом',
              style: const TextStyle(fontSize: 18, color: Color(0xFF808084)),
            ),
            const Divider(
              thickness: 3,
            )
          ],
        ),
      ),
    );
  }
}
