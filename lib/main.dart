import 'package:flutter/material.dart';
import 'app.dart';
import 'domain/core/configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appConfig = AppConfig(
    apiBaseUrl: 'https://38e5-45-115-53-172.ngrok-free.app/',
    appTitle: 'Whatsapp',
    buildFlavor: 'production',
    child: Container(),
  );
  appInitializer(appConfig);
}
