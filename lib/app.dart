import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'domain/core/configs/app_config.dart';
import 'domain/core/configs/injection.dart';
import 'domain/core/services/navigation_services/navigation_service.dart';
import 'domain/core/services/navigation_services/routers/route_name.dart';
import 'domain/core/services/navigation_services/routers/routing_config.dart';

class MainApp extends StatelessWidget with WidgetsBindingObserver {
  @override
  MainApp({Key? key}) : super(key: key) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Rubik',
          primaryColor: const Color(0xff128C7E),
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          colorScheme: ThemeData().colorScheme.copyWith(
                tertiaryContainer: const Color(0xFF000000),
                primary: const Color(0xff128C7E), //
                primaryContainer: const Color(0xffF2F4F7),
                onPrimary: const Color(0xff66afb0),
                tertiary: const Color(0xff075E54),
                onTertiary: const Color(0xff4285F4),
                onTertiaryContainer: const Color(0xff828282),
                background: const Color(0xffE0F6CA),
                outline: const Color(0xFFD9DFE9),
                onSecondary: const Color(0xff646464),

                onBackground: const Color(0xffF5F5F5),
                secondary: const Color(0xff128C7E),
                secondaryContainer: const Color(0xFF4F4F4F),

                // error: const Color(0xffE65A5A),
                onSurface: const Color(0xff4285F4),

                inversePrimary: const Color(0xFF27AE60),
                surface: const Color(0xFFBDBDBD),
                // shadow: const Color(0xFFFFFFFF),
                onInverseSurface: const Color(0xFFFF8A1E),
                surfaceTint: const Color(0xFF828282),
                // inverseSurface: const Color(0xFF7279A9),
              ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rubik',
            ),
            bodyMedium: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Rubik',
            ),
            bodySmall: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Rubik',
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          )),
      builder: (context, child) => child!,
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? UserRoutes.homeRoute
          : AuthRoutes.onboardRoute,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  final Directory appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  // await IAuthRepository().logoutUser();
  bool isAuthorized = true;

  AppStateNotifier appStateNotifier = AppStateNotifier(
    isAuthorized: isAuthorized,
  );

  final AppConfig configuredApp = AppConfig(
    apiBaseUrl: appConfig.apiBaseUrl,
    appTitle: appConfig.appTitle,
    buildFlavor: appConfig.buildFlavor,
    child: ChangeNotifierProvider<AppStateNotifier>(
      create: (context) {
        return appStateNotifier;
      },
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MainApp();
        },
      ),
    ),
  );

  setupLocator(navKey);
  return runApp(configuredApp);
}
