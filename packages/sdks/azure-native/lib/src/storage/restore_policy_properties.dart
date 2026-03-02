// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The blob service properties for blob restore policy
class RestorePolicyProperties {
  /// how long this blob can be restored. It should be great than zero and less than DeleteRetentionPolicy.days.
  final pulumi.Input<int>? days;
  /// Blob restore is enabled if set to true.
  final pulumi.Input<bool> enabled;

  /// Creates a new [RestorePolicyProperties].
  /// [days] how long this blob can be restored. It should be great than zero and less than DeleteRetentionPolicy.days.
  /// [enabled] Blob restore is enabled if set to true.
  RestorePolicyProperties({
    this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
    };
  }

  factory RestorePolicyProperties.fromMap(Map<String, dynamic> map) {
    return RestorePolicyProperties(
      days: map['days'] == null ? null : (map['days'] as int).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

