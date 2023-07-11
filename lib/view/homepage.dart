import 'package:flutter/material.dart';
import 'package:telemedicineapp/utils/response.dart';
import 'package:telemedicineapp/view/my_drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     foregroundColor: Colors.black,
      //     backgroundColor: Colors.white,
      //     title: Center(
      //       child: Container(
      //         height: R.sh(60, context),
      //         color: Colors.amber,
      //         child: Image.asset('asset/logo.png'),
      //       ),
      //     )),
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: R.sh(60, context),
              child: Image.asset('asset/logo.png'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.5,
                    0.8,
                    1,
                  ],
                  colors: [
                    Color(0xff00796B),
                    Color(0x5E03BF9D),
                    Color(0x8403BF9D),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dr. Ajit Bhalla",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
