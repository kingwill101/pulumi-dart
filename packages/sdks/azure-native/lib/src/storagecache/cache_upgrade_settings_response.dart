// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cache Upgrade Settings.
class CacheUpgradeSettingsResponse {
  /// When upgradeScheduleEnabled is true, this field holds the user-chosen upgrade time. At the user-chosen time, the firmware update will automatically be installed on the cache.
  final pulumi.Input<String>? scheduledTime;

  /// True if the user chooses to select an installation time between now and firmwareUpdateDeadline. Else the firmware will automatically be installed after firmwareUpdateDeadline if not triggered earlier via the upgrade operation.
  final pulumi.Input<bool>? upgradeScheduleEnabled;

  /// Creates a new [CacheUpgradeSettingsResponse].
  /// [scheduledTime] When upgradeScheduleEnabled is true, this field holds the user-chosen upgrade time. At the user-chosen time, the firmware update will automatically be installed on the cache.
  /// [upgradeScheduleEnabled] True if the user chooses to select an installation time between now and firmwareUpdateDeadline. Else the firmware will automatically be installed after firmwareUpdateDeadline if not triggered earlier via the upgrade operation.
  CacheUpgradeSettingsResponse({
    this.scheduledTime,
    this.upgradeScheduleEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledTime': ?scheduledTime,
      'upgradeScheduleEnabled': ?upgradeScheduleEnabled,
    };
  }

  factory CacheUpgradeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheUpgradeSettingsResponse(
      scheduledTime: (() {
        final guardedValue = map['scheduledTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      upgradeScheduleEnabled: (() {
        final guardedValue = map['upgradeScheduleEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
