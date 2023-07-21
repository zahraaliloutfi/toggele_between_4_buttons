import 'package:chat_app/mm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _hasBeenPressed = false;
  // one must always be true, means selected.
  List<bool> isSelected = [true, false, false];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ToggleButtons(
            // list of booleans
            isSelected: isSelected,
            // text color of selected toggle
            selectedColor: Colors.white,
            // text color of not selected toggle
            color: Colors.green,
            // fill color of selected toggle
            fillColor: Colors.greenAccent,
            // when pressed, splash color is seen
            splashColor: Colors.greenAccent,
            // long press to identify highlight color
            highlightColor: Colors.orange,
            // if consistency is needed for all text style
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            // border properties for each toggle
            renderBorder: true,
            borderColor: Colors.black,
            borderWidth: 1.5,
            borderRadius: BorderRadius.circular(10),
            selectedBorderColor: Colors.white,
            // add widgets for which the users need to toggle
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('MALE', style: TextStyle(fontSize: 18)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('FEMALE', style: TextStyle(fontSize: 18)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('OTHER', style: TextStyle(fontSize: 18)),
              ),
            ],
            // to select or deselect when pressed
            onPressed: (int newIndex) {
              setState(() {
                // looping through the list of booleans values
                for (int index = 0; index < isSelected.length; index++) {
                  // checking for the index value
                  if (index == newIndex) {
                    // one button is always set to true
                    isSelected[index] = true;
                  } else {
                    // other two will be set to false and not selected
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}

        // children: [
        //   ElevatedButton(
        //     child: Text('zahra'),
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor:
        //             _hasBeenPressed ? Colors.white : Colors.blue),
        //     onPressed: () {
        //       setState(() {
        //         _hasBeenPressed = !_hasBeenPressed;
        //       });
        //     },
        //   ),
        //   ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor:
        //             _hasBeenPressed ? Colors.blue : Colors.white),
        //     onPressed: () {
        //       setState(() {
        //         _hasBeenPressed = !_hasBeenPressed;
        //       });
        //     },
        //     child: Text('zahra'),
        //   ),
        //   Row(
        //     children: [
        //       ElevatedButton(
        //         child: Text('zahra'),
        //         style: ElevatedButton.styleFrom(
        //             backgroundColor:
        //                 _hasBeenPressed ? Colors.white : Colors.blue),
        //         onPressed: () {
        //           setState(() {
        //             _hasBeenPressed = !_hasBeenPressed;
        //           });
        //         },
        //       ),
        //       ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //             backgroundColor:
        //                 _hasBeenPressed ? Colors.blue : Colors.white),
        //         onPressed: () {
        //           setState(() {
        //             _hasBeenPressed = !_hasBeenPressed;
        //           });
        //         },
        //         child: Text('zahra'),
        //       ),
        //     ],
        //   ),
        // ],

