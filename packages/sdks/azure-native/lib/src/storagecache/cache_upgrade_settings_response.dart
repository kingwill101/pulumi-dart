// ignore_for_file: unused_element, unnecessary_cast


/// Cache Upgrade Settings.
class CacheUpgradeSettingsResponse {
  /// When upgradeScheduleEnabled is true, this field holds the user-chosen upgrade time. At the user-chosen time, the firmware update will automatically be installed on the cache.
  final String? scheduledTime;
  /// True if the user chooses to select an installation time between now and firmwareUpdateDeadline. Else the firmware will automatically be installed after firmwareUpdateDeadline if not triggered earlier via the upgrade operation.
  final bool? upgradeScheduleEnabled;

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
      scheduledTime: map['scheduledTime'] == null ? null : map['scheduledTime'] as String,
      upgradeScheduleEnabled: map['upgradeScheduleEnabled'] == null ? null : map['upgradeScheduleEnabled'] as bool,
    );
  }
}

