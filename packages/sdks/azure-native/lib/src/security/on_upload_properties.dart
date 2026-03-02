// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of On Upload malware scanning.
class OnUploadProperties {
  /// Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  final pulumi.Input<int>? capGBPerMonth;
  /// Indicates whether On Upload malware scanning should be enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [OnUploadProperties].
  /// [capGBPerMonth] Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  /// [isEnabled] Indicates whether On Upload malware scanning should be enabled.
  OnUploadProperties({
    this.capGBPerMonth,
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capGBPerMonth': ?capGBPerMonth,
      'isEnabled': ?isEnabled,
    };
  }

  factory OnUploadProperties.fromMap(Map<String, dynamic> map) {
    return OnUploadProperties(
      capGBPerMonth: map['capGBPerMonth'] == null ? null : (map['capGBPerMonth'] as int).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
    );
  }
}

