import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class AppointmentsChart extends StatefulWidget {
  const AppointmentsChart({super.key});

  @override
  State<AppointmentsChart> createState() => _AppointmentsChartState();
}

class _AppointmentsChartState extends State<AppointmentsChart> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          radiusFactor: 1,
          axisLineStyle: const AxisLineStyle(
            thickness: 0.16,
            color: Color(0xFF740AC7),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: const <GaugePointer>[
            RangePointer(
              value: (4 / 10) * 100,
              width: 0.16,
              sizeUnit: GaugeSizeUnit.factor,
              enableAnimation: true,
              animationDuration: 75,
              animationType: AnimationType.linear,
              // gradient: SweepGradient(
              //     colors: <Color>[Color(0xFF740AC7), Color(0xFF740AC7)],
              //     stops: <double>[0.25, 0.75]),
              color: Colors.white,
            ),
          ],
          annotations: const <GaugeAnnotation>[
            GaugeAnnotation(
              positionFactor: 0.1,
              widget: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Ongoing',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '4/10',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
