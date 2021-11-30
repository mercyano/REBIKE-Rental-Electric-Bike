import 'package:flutter/cupertino.dart';

class BouncyPageRoute extends PageRouteBuilder {
  final Widget widget;

  BouncyPageRoute({required this.widget})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
              return ScaleTransition(
                alignment: Alignment.center,
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
