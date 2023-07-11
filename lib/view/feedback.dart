import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:telemedicineapp/utils/response.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 10),
                child: Text(
                  'Feedback',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23, top: 13),
                child: Image.asset('asset/iconoir_cancel.png'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'We \'d Love to Hear From You!',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff03BF9C)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 10),
            child: Text(
              'How satisfied are you with our app?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 10),
            child: Container(
              width: R.sw(334, context),
              height: R.sh(139, context),
              decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(-1, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  // color: Color(0xffD9D9D9),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(154, 175, 174, 174))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Rate Us'),
                      ),
                    ],
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      itemSize: 60,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 12),
            child: Text(
              'How satisfied are you with our app?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 10),
            child: Container(
              width: R.sw(334, context),
              height: R.sh(139, context),
              decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(-1, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  // color: Color(0xffD9D9D9),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(154, 175, 174, 174))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('I liked...'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 12),
            child: Text(
              'What areas do you think we can improve?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 10),
            child: Container(
              width: R.sw(334, context),
              height: R.sh(139, context),
              decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(-1, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  // color: Color(0xffD9D9D9),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(154, 175, 174, 174))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Type your answer Here'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(368, 59),
                      backgroundColor: Color(0xff03BF9C)),
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
