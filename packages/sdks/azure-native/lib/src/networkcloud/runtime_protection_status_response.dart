// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeProtectionStatusResponse {
  /// The timestamp when the malware definitions were last updated.
  final pulumi.Input<String> definitionsLastUpdated;
  /// The version of the malware definitions.
  final pulumi.Input<String> definitionsVersion;
  /// The timestamp of the most recently completed scan, or empty if there has never been a scan.
  final pulumi.Input<String> scanCompletedTime;
  /// The timestamp of the most recently scheduled scan, or empty if no scan has been scheduled.
  final pulumi.Input<String> scanScheduledTime;
  /// The timestamp of the most recently started scan, or empty if there has never been a scan.
  final pulumi.Input<String> scanStartedTime;

  /// Creates a new [RuntimeProtectionStatusResponse].
  /// [definitionsLastUpdated] The timestamp when the malware definitions were last updated.
  /// [definitionsVersion] The version of the malware definitions.
  /// [scanCompletedTime] The timestamp of the most recently completed scan, or empty if there has never been a scan.
  /// [scanScheduledTime] The timestamp of the most recently scheduled scan, or empty if no scan has been scheduled.
  /// [scanStartedTime] The timestamp of the most recently started scan, or empty if there has never been a scan.
  RuntimeProtectionStatusResponse({
    required this.definitionsLastUpdated,
    required this.definitionsVersion,
    required this.scanCompletedTime,
    required this.scanScheduledTime,
    required this.scanStartedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionsLastUpdated': definitionsLastUpdated,
      'definitionsVersion': definitionsVersion,
      'scanCompletedTime': scanCompletedTime,
      'scanScheduledTime': scanScheduledTime,
      'scanStartedTime': scanStartedTime,
    };
  }

  factory RuntimeProtectionStatusResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeProtectionStatusResponse(
      definitionsLastUpdated: (map['definitionsLastUpdated'] as String).input(),
      definitionsVersion: (map['definitionsVersion'] as String).input(),
      scanCompletedTime: (map['scanCompletedTime'] as String).input(),
      scanScheduledTime: (map['scanScheduledTime'] as String).input(),
      scanStartedTime: (map['scanStartedTime'] as String).input(),
    );
  }
}

