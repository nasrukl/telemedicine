import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_model.dart';

class PatientAnalysis extends StatefulWidget {
  const PatientAnalysis({super.key});

  @override
  State<PatientAnalysis> createState() => _PatientAnalysisState();
}

class _PatientAnalysisState extends State<PatientAnalysis>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _controller;
  final List<String> tabStrings = [
    "Yearly",
    "Monthly",
    "Weekly",
    "Daily",
    "Current"
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              scrolledUnderElevation: 0,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              title: Text(
                "Patients analysis",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              primary: false,
              title: PreferredSize(
                preferredSize: const Size.fromHeight(56),
                child: _buildTextField(),
              ),
            ),
            SliverAppBar(
              primary: false,
              pinned: true,
              backgroundColor: Colors.white,
              title: TabBar(
                controller: _controller,
                indicatorColor: Colors.white,
                isScrollable: true,
                padding: EdgeInsets.zero,
                splashBorderRadius: BorderRadius.circular(10),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff03BF9C)),
                onTap: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                tabs: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: _selectedIndex == i
                            ? const Color(0xff03BF9C)
                            : Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        tabStrings[i],
                        style: TextStyle(
                          color:
                              _selectedIndex == i ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 2),
                          blurRadius: 3,
                          spreadRadius: 1,
                          color: Colors.grey[400]!,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Patient Ratio",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              height: 180,
                              child: _buildPatientRatioChart(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffC185EF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Repeated\nPatients",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff740AC7),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "New\nPatients",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 2),
                          blurRadius: 3,
                          spreadRadius: 1,
                          color: Colors.grey[400]!,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Gender Ratio",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              height: 180,
                              child: _buildGenderRatioChart(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffC185EF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Male",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF0DCFF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Female",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff740AC7),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Other",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 2),
                          blurRadius: 3,
                          spreadRadius: 1,
                          color: Colors.grey[400]!,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Age Group Analysis",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              height: 180,
                              child: _buildGenderRatioChart(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffC185EF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Male",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF0DCFF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Female",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff740AC7),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "Other",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: TextEditingController(text: "Clinic"),
        cursorColor: const Color(0xff03BF9C),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
          filled: true,
          fillColor: const Color(0xffEAFFFB),
          suffixIcon: Container(
            width: 45,
            height: 46,
            decoration: const BoxDecoration(
                color: Color(0xff03BF9C),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  SfCircularChart _buildPatientRatioChart() {
    return SfCircularChart(
      palette: const [
        Color(0xffC185EF),
        Color(0xff740AC7),
      ],
      series: _getPatientRatioSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  ///Get the pie series
  List<PieSeries<ChartSampleData, String>> _getPatientRatioSeries() {
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: 'Repeated Patients', y: 90),
            ChartSampleData(x: 'New Patients', y: 10),
          ],
          xValueMapper: (ChartSampleData data, _) => data.x,
          yValueMapper: (ChartSampleData data, _) => data.y,
          startAngle: 150,
          endAngle: 150,
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
    ];
  }

  SfCircularChart _buildGenderRatioChart() {
    return SfCircularChart(
      palette: const [
        Color(0xffF0DCFF),
        Color(0xff740AC7),
        Color(0xffC185EF),
      ],
      series: _getGenderRatioSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  ///Get the pie series
  List<PieSeries<ChartSampleData, String>> _getGenderRatioSeries() {
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: "Female", y: 48),
            ChartSampleData(x: 'Other', y: 10),
            ChartSampleData(x: 'Male', y: 42),
          ],
          xValueMapper: (ChartSampleData data, _) => data.x,
          yValueMapper: (ChartSampleData data, _) => data.y,
          startAngle: 150,
          endAngle: 150,
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
    ];
  }
}
