// ignore_for_file: unused_element, unnecessary_cast


class RuntimeProtectionStatusResponse {
  /// The timestamp when the malware definitions were last updated.
  final String definitionsLastUpdated;
  /// The version of the malware definitions.
  final String definitionsVersion;
  /// The timestamp of the most recently completed scan, or empty if there has never been a scan.
  final String scanCompletedTime;
  /// The timestamp of the most recently scheduled scan, or empty if no scan has been scheduled.
  final String scanScheduledTime;
  /// The timestamp of the most recently started scan, or empty if there has never been a scan.
  final String scanStartedTime;

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
      definitionsLastUpdated: map['definitionsLastUpdated'] as String,
      definitionsVersion: map['definitionsVersion'] as String,
      scanCompletedTime: map['scanCompletedTime'] as String,
      scanScheduledTime: map['scanScheduledTime'] as String,
      scanStartedTime: map['scanStartedTime'] as String,
    );
  }
}

