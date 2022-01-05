import 'package:flutter/material.dart';
import 'package:ui/main.dart';


class Secondscreen extends StatefulWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  bool isButtonPressed = false;
  bool isButtonnotPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252c49),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(30.0),
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff494f72),
                  style: BorderStyle.solid,
                    width:4,
                ),
                borderRadius: BorderRadius.circular(27)
              ),
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xffd761ac)),
                    backgroundColor: Color(0xffD6D6D6),
                  ),
                ),
              ),
            Container(
              margin: const EdgeInsets.only(top: 130, left: 40, bottom: 130),
              child: const Text('The National animal of Scotland is the Unicorn',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),),
            ),

            Container(
              margin: const EdgeInsets.all(10.0),
              height:50.0,
              width: 363,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      isButtonPressed =!isButtonPressed;
                    });
                  },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: isButtonPressed ? Colors.green : Colors.red,
                            )
                        )
                    ),
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('True',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        child: InkWell(
                          focusColor: Colors.white,
                          child: const ImageIcon(
                            AssetImage('assets/check.png'),
                            color: Colors.white
                            ,
                          ),
                          onTap: (){
                            setState(() {
                              isButtonPressed =!isButtonPressed;
                            });
                          },
                        ),
                      )
                    ],
                  ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 1.0, left: 15.0, right: 15.0, bottom: 200.0),
              height:50.0,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      isButtonnotPressed =!isButtonnotPressed;
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: isButtonnotPressed ? Colors.green : Colors.red,
                            )
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('False',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        child: const ImageIcon(
                          AssetImage('assets/wrong.png'), color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),

            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                child: const Text('Back',
                style: TextStyle(
                  fontSize: 22.0,
                ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return const MyHomePage();
                  }
                  )  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
