import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {required this.icon,
      required this.label,
      required this.onPressed,
      this.primary,
      this.onPrimary,
      Key? key})
      : super(key: key);

  final IconData icon;
  final String label;
  final Function() onPressed;
  final Color? primary;
  final Color? onPrimary;

  final double _borderRadius = 15;

  @override
  Widget build(BuildContext context) {
    final _defaultPrimary = Theme.of(context).buttonColor;
    final _defaultOnPrimary = Colors.white;

    return SizedBox(
      width: 70,
      child: Column(
        children: [
          _background(
            color: primary ?? _defaultPrimary,
            child: _iconButton(color: onPrimary ?? _defaultOnPrimary),
          ),
          SizedBox(height: 8),
          _labelText(),
        ],
      ),
    );
  }

  Widget _background({required Widget child, required Color color}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(.8), color],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: child,
    );
  }

  Widget _iconButton({required Color color}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(
            icon,
            size: 28,
            color: color,
          ),
        ),
        onTap: onPressed,
        highlightColor: color.withOpacity(.1),
        overlayColor: MaterialStateProperty.all(
          color.withOpacity(.3),
        ),
      ),
    );
  }

  Widget _labelText() {
    return Text(
      GetUtils.capitalizeFirst(label)!,
      style: TextStyle(fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
