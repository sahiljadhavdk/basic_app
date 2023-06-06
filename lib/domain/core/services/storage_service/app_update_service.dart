import 'dart:core';
import 'package:hive/hive.dart';

import 'storage_service.dart';

class AppUpdateService {
  static const String appUpdateBoxName = StorageService.appUpdateBoxName;
  static Future clearAppHashValue() async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    coreBox.delete('hash');
  }

  static Future<String> getAppHashValue() async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    String hashValue = coreBox.get('hash', defaultValue: '');
    return hashValue;
  }

  static Future setAppHashValue({String? hashValue}) async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    coreBox.put('hash', hashValue);
  }

  static Future clearAppLastSync() async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    coreBox.delete('lastSyncedAt');
  }

  static Future<DateTime> getAppLastSyncAt() async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    int lastSyncAt = coreBox.get('lastSyncedAt', defaultValue: 0);
    return DateTime.fromMillisecondsSinceEpoch(lastSyncAt);
  }

  static Future setAppLastSyncAt({required DateTime lastSyncAt}) async {
    final coreBox = await Hive.openBox(appUpdateBoxName);
    coreBox.put('lastSyncedAt', lastSyncAt.millisecondsSinceEpoch);
  }
}
