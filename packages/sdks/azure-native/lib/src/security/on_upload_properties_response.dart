// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of On Upload malware scanning.
class OnUploadPropertiesResponse {
  /// Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  final pulumi.Input<int>? capGBPerMonth;
  /// Indicates whether On Upload malware scanning should be enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [OnUploadPropertiesResponse].
  /// [capGBPerMonth] Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  /// [isEnabled] Indicates whether On Upload malware scanning should be enabled.
  const OnUploadPropertiesResponse({
    this.capGBPerMonth,
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capGBPerMonth': ?capGBPerMonth,
      'isEnabled': ?isEnabled,
    };
  }

  factory OnUploadPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OnUploadPropertiesResponse(
      capGBPerMonth: (() { final guardedValue = map['capGBPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
