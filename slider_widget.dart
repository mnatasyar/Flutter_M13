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
