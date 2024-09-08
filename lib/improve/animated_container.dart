import 'package:flutter/material.dart';

void main() => runApp(MyApp8());

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Container"),
        ),
        body: const AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;
  Color containerColor = Colors.blue;
  double borderRadius = 0.0;
  double containerWidth = 100.0;
  double containerHeight = 200.0;
  AlignmentGeometry containerAlignment = AlignmentDirectional.topCenter;
  double opacityLevel = 0.5;
  double rotationAngle = 0.0;

  void toggleContainerProperties() {
    setState(() {
      selected = !selected;
      containerColor = selected ? Colors.red : Colors.blue;
      borderRadius = selected ? 50.0 : 0.0;
      containerWidth = selected ? 200.0 : 100.0;
      containerHeight = selected ? 100.0 : 200.0;
      containerAlignment =
          selected ? Alignment.center : AlignmentDirectional.topCenter;
      opacityLevel = selected ? 1.0 : 0.5;
      rotationAngle = selected ? 3.14 / 4 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleContainerProperties,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(borderRadius),
                boxShadow: [
                  BoxShadow(
                    color: selected ? Colors.black54 : Colors.transparent,
                    blurRadius: selected ? 10.0 : 0.0,
                    offset: selected ? Offset(10, 10) : Offset(0, 0),
                  ),
                ],
              ),
              alignment: containerAlignment,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: Transform.rotate(
                  angle: rotationAngle,
                  child: const FlutterLogo(size: 75),
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              width: selected ? 150.0 : 75.0,
              height: selected ? 75.0 : 150.0,
              decoration: BoxDecoration(
                color: selected ? Colors.green : Colors.purple,
                borderRadius: BorderRadius.circular(selected ? 25.0 : 0.0),
                boxShadow: [
                  BoxShadow(
                    color: selected ? Colors.black54 : Colors.transparent,
                    blurRadius: selected ? 10.0 : 0.0,
                    offset: selected ? Offset(10, 10) : Offset(0, 0),
                  ),
                ],
              ),
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: AnimatedOpacity(
                opacity: selected ? 0.8 : 0.3,
                duration: const Duration(seconds: 2),
                child: Transform.scale(
                  scale: selected ? 1.5 : 1.0,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              width: selected ? 300.0 : 50.0,
              height: selected ? 50.0 : 300.0,
              decoration: BoxDecoration(
                color: selected ? Colors.orange : Colors.pink,
                borderRadius: BorderRadius.circular(selected ? 75.0 : 10.0),
                boxShadow: [
                  BoxShadow(
                    color: selected ? Colors.black54 : Colors.transparent,
                    blurRadius: selected ? 10.0 : 0.0,
                    offset: selected ? Offset(10, 10) : Offset(0, 0),
                  ),
                ],
              ),
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: AnimatedOpacity(
                opacity: selected ? 1.0 : 0.2,
                duration: const Duration(seconds: 2),
                child: Transform.translate(
                  offset: selected ? Offset(20, 20) : Offset(0, 0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
