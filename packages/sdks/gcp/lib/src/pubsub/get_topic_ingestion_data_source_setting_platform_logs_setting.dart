// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicIngestionDataSourceSettingPlatformLogsSetting {
  /// The minimum severity level of Platform Logs that will be written. If unspecified,
  /// no Platform Logs will be written. Default value: "SEVERITY_UNSPECIFIED" Possible values: ["SEVERITY_UNSPECIFIED", "DISABLED", "DEBUG", "INFO", "WARNING", "ERROR"]
  final pulumi.Input<String> severity;

  /// Creates a new [GetTopicIngestionDataSourceSettingPlatformLogsSetting].
  /// [severity] The minimum severity level of Platform Logs that will be written. If unspecified,
  GetTopicIngestionDataSourceSettingPlatformLogsSetting({
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severity': severity,
    };
  }

  factory GetTopicIngestionDataSourceSettingPlatformLogsSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingPlatformLogsSetting(
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

