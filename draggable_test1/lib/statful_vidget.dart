import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget(
      {super.key,
      required this.dragText,
      required this.targetText,
      required this.idWidget});
  int idWidget = 0;
  String dragText = '';
  String targetText = '';

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color dragColor = Colors.blueAccent;
  Color targetColor = Colors.yellowAccent;

  String dragTextCurr = '';
  String targetTextCurr = '';

  @override
  void initState() {
    super.initState();
    dragTextCurr = widget.dragText;
    targetTextCurr = widget.targetText;
    print('widget.dragText : ${widget.dragText}');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Draggable<int>(
          // Data is the value this Draggable stores.
          data: widget.idWidget,
          //   axis: Axis.horizontal,
          feedback: Container(
            height: 100.0,
            width: 100.0,
            color: dragColor,
            child: Center(
              child: Text(
                dragTextCurr,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
          onDragStarted: () {
            dragTextCurr = '';
            dragColor = Colors.transparent;
            print(widget.dragText);
          },
          child: Container(
            height: 100.0,
            width: 100.0,
            color: dragColor,
            child: Center(
              child: Text(
                dragTextCurr,
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
        ),
        DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              height: 100.0,
              width: 100.0,
              color: targetColor,
              child: Center(
                child: Text(
                  targetTextCurr,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            );
          },
          onWillAccept: (data) {
            print('onWillAccept');
            print('data: $data, widget.idWidget: {widget.idWidget}');
            if (data == widget.idWidget) {
              return true;
            } else {
              return false;
            }
          },
          onAccept: (int data) {
            print(widget.dragText);

            setState(() {
              targetTextCurr = widget.dragText;
              targetColor = Colors.blueAccent;
            });
          },
        ),
      ],
    );
  }
}
