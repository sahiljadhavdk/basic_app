import 'dart:io';

import 'package:app/presentation/auth/auth_screen.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/core/extensions/string_extension.dart';
import 'route_name.dart';

Route<dynamic> authorizedNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;

  switch (routingData.route) {
    case UserRoutes.homeRoute:
      return _getPageRoute(const HomeScreen(), settings);

    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case AuthRoutes.authRoute:
      return _getPageRoute(const AuthScreen(), settings);

    default:
      return _getPageRoute(
          Container(
            color: Colors.white,
          ),
          settings);
  }
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  //return CupertinoRoute(enterPage: child);
  if (Platform.isIOS && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) => child);
  } else {
    return MaterialPageRoute(builder: (BuildContext context) => child);
  }
}
