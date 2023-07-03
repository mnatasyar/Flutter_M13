import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_m13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';


class SlideWidget extends StatelessWidget {
  const SlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Slider(
      value: prov.sliderValue, 
      min: 0,
      max: 10,
      label: prov.sliderValue.round().toString(),
      onChanged: (value) {
        prov.setSliderValue = value;
      },
    );
  }
}



if (_dateRange != null) {
  ListTile(
    title: const Text('Rentang Tanggal Terpilih'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (DateTime date in _dateRange!.getRange(_dateRange!.start, _dateRange!.end))
          Text(date.toString().split(' ')[0]),
      ],
    ),
  );
}


if (_dateRange != null) {
  ListTile(
    title: const Text('Rentang Tanggal Terpilih'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i <= _dateRange!.end.difference(_dateRange!.start).inDays; i++) 
          Text((_dateRange!.start.add(Duration(days: i))).toString().split(' ')[0]),
      ],
    ),
  );
}

import 'package:intl/intl.dart';

if (_dateRange != null) {
  ListTile(
    title: const Text('Rentang Tanggal Terpilih'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i <= _dateRange!.end.difference(_dateRange!.start).inDays; i++) 
          Text(
            '${DateFormat('EEEE, dd MMMM yyyy').format(_dateRange!.start.add(Duration(days: i)))}',
          ),
      ],
    ),
  );
}

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

if (_dateRange != null) {
  initializeDateFormatting('id_ID', null); // Menginisialisasi bahasa Indonesia

  ListTile(
    title: const Text('Rentang Tanggal Terpilih'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i <= _dateRange!.end.difference(_dateRange!.start).inDays; i++) 
          Text(
            '${DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(_dateRange!.start.add(Duration(days: i)))}',
          ),
      ],
    ),
  );
}

