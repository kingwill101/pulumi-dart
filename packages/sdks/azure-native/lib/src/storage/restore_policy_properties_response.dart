// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The blob service properties for blob restore policy
class RestorePolicyPropertiesResponse {
  /// how long this blob can be restored. It should be great than zero and less than DeleteRetentionPolicy.days.
  final pulumi.Input<int>? days;
  /// Blob restore is enabled if set to true.
  final pulumi.Input<bool> enabled;
  /// Deprecated in favor of minRestoreTime property.
  final pulumi.Input<String> lastEnabledTime;
  /// Returns the minimum date and time that the restore can be started.
  final pulumi.Input<String> minRestoreTime;

  /// Creates a new [RestorePolicyPropertiesResponse].
  /// [days] how long this blob can be restored. It should be great than zero and less than DeleteRetentionPolicy.days.
  /// [enabled] Blob restore is enabled if set to true.
  /// [lastEnabledTime] Deprecated in favor of minRestoreTime property.
  /// [minRestoreTime] Returns the minimum date and time that the restore can be started.
  RestorePolicyPropertiesResponse({
    this.days,
    required this.enabled,
    required this.lastEnabledTime,
    required this.minRestoreTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
      'lastEnabledTime': lastEnabledTime,
      'minRestoreTime': minRestoreTime,
    };
  }

  factory RestorePolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RestorePolicyPropertiesResponse(
      days: map['days'] == null ? null : (map['days']! as int).input(),
      enabled: (map['enabled'] as bool).input(),
      lastEnabledTime: (map['lastEnabledTime'] as String).input(),
      minRestoreTime: (map['minRestoreTime'] as String).input(),
    );
  }
}

