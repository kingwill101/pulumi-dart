// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's Autoclass configuration.
class BucketAutoclassResponse {
  /// Whether or not Autoclass is enabled on this bucket
  final pulumi.Input<bool> enabled;
  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  final pulumi.Input<String> terminalStorageClass;
  /// A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  final pulumi.Input<String> terminalStorageClassUpdateTime;
  /// A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  final pulumi.Input<String> toggleTime;

  /// Creates a new [BucketAutoclassResponse].
  /// [enabled] Whether or not Autoclass is enabled on this bucket
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  /// [terminalStorageClassUpdateTime] A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  /// [toggleTime] A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  const BucketAutoclassResponse({
    required this.enabled,
    required this.terminalStorageClass,
    required this.terminalStorageClassUpdateTime,
    required this.toggleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'terminalStorageClass': terminalStorageClass,
      'terminalStorageClassUpdateTime': terminalStorageClassUpdateTime,
      'toggleTime': toggleTime,
    };
  }

  factory BucketAutoclassResponse.fromMap(Map<String, dynamic> map) {
    return BucketAutoclassResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      terminalStorageClass: pulumi.Input.fromValue(map['terminalStorageClass'] as String),
      terminalStorageClassUpdateTime: pulumi.Input.fromValue(map['terminalStorageClassUpdateTime'] as String),
      toggleTime: pulumi.Input.fromValue(map['toggleTime'] as String),
    );
  }
}
