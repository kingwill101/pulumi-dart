// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContentScanning resources.
class ContentScanningState {
  /// Defines the last modification date (ISO 8601) of the Content Scanning status.
  final pulumi.Input<String?>? modified;
  /// The status value for Content Scanning.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? value;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ContentScanningState].
  /// [modified] Defines the last modification date (ISO 8601) of the Content Scanning status.
  /// [value] The status value for Content Scanning.
  /// [zoneId] Defines an identifier.
  const ContentScanningState({
    this.modified,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modified': ?modified,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory ContentScanningState.fromMap(Map<String, dynamic> map) {
    return ContentScanningState(
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
