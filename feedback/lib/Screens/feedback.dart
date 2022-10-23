import 'package:flutter/material.dart';

class feedback extends StatelessWidget {
  const feedback({Key? key, required title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            {}
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Your Review",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            buildCheckItem("Login trouble"),
            buildCheckItem("phone number related"),
            buildCheckItem("Personal profile"),
            buildCheckItem("Other issues"),
            buildCheckItem("Suggestions"),
            SizedBox(
              height: 20.0,
            ),
            buildFeedbackForm(),
            SizedBox(
              height: 20.0,
            ),
            buildNumberField(),
            Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: flatButton(
                    onpressed: () {},
                    color: Color(0xffe5e5e5),
                    Padding: EdgeInsets.all(16.0),
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

buildFeedbackForm() {
  return Container(
    height: 200.0,
    child: Stack(
      children: <Widget>[
        TextField(
          maxLines: 10,
        ),
      ],
    ),
  );
}

buildCheckItem(title) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15.0),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.check_circle,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    ),
  );
}
