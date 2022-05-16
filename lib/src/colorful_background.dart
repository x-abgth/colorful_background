import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class ColorfulBackground extends StatefulWidget {
  final Widget? child;
  final List<Color> backgroundColors;
  final Alignment begin;
  final Alignment end;
  final Duration duration;
  final double width;
  final double height;
  final List<Widget> decoratorsList;

  const ColorfulBackground({
    Key? key,
    required this.duration,
    required this.backgroundColors,
    this.child,
    this.decoratorsList = const [SizedBox()],
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.height = double.infinity,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  State<ColorfulBackground> createState() => _ColorfulBackgroundState();
}

class _ColorfulBackgroundState extends State<ColorfulBackground> {

  late Color bottomColor;
  late Color topColor;
  late Alignment begin;
  late Alignment end;
  int index = 0;

  @override
  void initState() {
    bottomColor = widget.backgroundColors[widget.backgroundColors.length <= 1 ? widget.backgroundColors.length : 1];
    topColor = widget.backgroundColors[0];
    begin = widget.begin;
    end = widget.end;
    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      Future.delayed(widget.duration, () {
        if (mounted) {
          setState(() {
            bottomColor = widget.backgroundColors[index % widget.backgroundColors.length];
          });
        }
      });

      return SizedBox(
        height: widget.height,
        width: widget.width,
        child: Stack(
          children: [
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              duration: widget.duration,
              onEnd: () {
                setState(() {
                  index = index + 1;

                  bottomColor = widget.backgroundColors[index % widget.backgroundColors.length];
                  topColor = widget.backgroundColors[(index + 1) % widget.backgroundColors.length];
                });
              },
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: begin, end: end, colors: [bottomColor, topColor])),
            ),
            for (int i = 0; i < widget.decoratorsList.length; i++) widget.decoratorsList[i],
            Positioned.fill(child: widget.child ?? const SizedBox()),
          ],
        ),
      );
    }
}
    