// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's Autoclass configuration.
class BucketAutoclass {
  /// Whether or not Autoclass is enabled on this bucket
  final pulumi.Input<bool>? enabled;
  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  final pulumi.Input<String>? terminalStorageClass;
  /// A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  final pulumi.Input<String>? terminalStorageClassUpdateTime;
  /// A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  final pulumi.Input<String>? toggleTime;

  /// Creates a new [BucketAutoclass].
  /// [enabled] Whether or not Autoclass is enabled on this bucket
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  /// [terminalStorageClassUpdateTime] A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  /// [toggleTime] A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  BucketAutoclass({
    this.enabled,
    this.terminalStorageClass,
    this.terminalStorageClassUpdateTime,
    this.toggleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'terminalStorageClass': ?terminalStorageClass,
      'terminalStorageClassUpdateTime': ?terminalStorageClassUpdateTime,
      'toggleTime': ?toggleTime,
    };
  }

  factory BucketAutoclass.fromMap(Map<String, dynamic> map) {
    return BucketAutoclass(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminalStorageClass: (() { final guardedValue = map['terminalStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminalStorageClassUpdateTime: (() { final guardedValue = map['terminalStorageClassUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toggleTime: (() { final guardedValue = map['toggleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

