// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicIngestionDataSourceSettingsPlatformLogsSettings {
  /// The minimum severity level of Platform Logs that will be written. If unspecified,
  /// no Platform Logs will be written.
  /// Default value is `SEVERITY_UNSPECIFIED`.
  /// Possible values are: `SEVERITY_UNSPECIFIED`, `DISABLED`, `DEBUG`, `INFO`, `WARNING`, `ERROR`.
  final pulumi.Input<String>? severity;

  /// Creates a new [TopicIngestionDataSourceSettingsPlatformLogsSettings].
  /// [severity] The minimum severity level of Platform Logs that will be written. If unspecified,
  const TopicIngestionDataSourceSettingsPlatformLogsSettings({
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severity': ?severity,
    };
  }

  factory TopicIngestionDataSourceSettingsPlatformLogsSettings.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsPlatformLogsSettings(
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
