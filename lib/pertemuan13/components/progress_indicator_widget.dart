import 'package:flutter/material.dart';
import 'package:flutter_m13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(100, 90)),
      onPressed: () {
        prov.mulaiMemanggang(prov.sliderValue.round());
      },
      child: prov.sedangMemanggang
          ? LinearProgressIndicator(
              value: prov.progressValue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: Colors.grey,
            )
          : const Text('Panggang'),
    );
  }
}
