import 'package:flutter/material.dart';

class ResimVeButtonTurleri extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            child: Text(
              "Image ve Buton Turleri",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(2)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/off.jpg",
                        ),
                        Text(
                          "Asset Image",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg",
                        ),
                        Text(
                          "Network Image",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.cyan,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png",
                          ),
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.orange,
                          radius: 30,
                        ),
                        Text("circle avatar"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(2)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/loading.gif",
                            image:
                                "https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg"),
                        Text(
                          "fade ın ımage",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          size: 150,
                          style: FlutterLogoStyle.horizontal,
                          textColor: Colors.blue,
                        ),
                        Text(
                          "flutter logo",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Placeholder(
                            color: Colors.red,
                            strokeWidth: 2,
                          ),
                        ),
                        Text(
                          "Place holder",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
                  onPressed: () => debugPrint("fat arrow lu buton"),
                  child: Text(
                    "tıkla",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.brown.shade800,
                ),
                RaisedButton(
                  onPressed: () {
                    debugPrint("ikinci buton");
                  },
                  child: Text(
                    "fat arrow",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  textColor: Colors.black,
                  color: Colors.green,
                ),
                RaisedButton(
                  onPressed: () {
                    uzunMethod();
                  },
                  child: Text("üçüncü buton"),
                  color: Colors.yellow,
                  textColor: Colors.red,
                ),
                RaisedButton(
                  onPressed: uzunMethod,
                  child: Text("üçüncü buton"),
                  color: Colors.indigo,
                  textColor: Colors.red,
                ),
                IconButton(
                  icon: Icon(
                    Icons.alarm_add,
                    color: Colors.lightBlue,
                    size: 34,
                  ),
                  onPressed: methodIki,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "flat button",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void methodIki() => debugPrint("ıcon buton tıklandı");
void uzunMethod() {
  debugPrint("uzun method çalıştırıldı.");
}
