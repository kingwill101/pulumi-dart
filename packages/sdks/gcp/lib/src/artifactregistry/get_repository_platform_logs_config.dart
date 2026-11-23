// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryPlatformLogsConfig {
  /// The state of the platform logs: enabled or disabled. Possible values: ["ENABLED", "DISABLED"]
  final pulumi.Input<String> loggingState;
  /// The severity level for the logs. Logs will be generated if their
  /// severity level is &gt;= than the value of the severity level mentioned here. Possible values: ["DEBUG", "INFO", "NOTICE", "WARNING", "ERROR", "CRITICAL", "ALERT", "EMERGENCY"]
  final pulumi.Input<String> severityLevel;

  /// Creates a new [GetRepositoryPlatformLogsConfig].
  /// [loggingState] The state of the platform logs: enabled or disabled. Possible values: ["ENABLED", "DISABLED"]
  /// [severityLevel] The severity level for the logs. Logs will be generated if their
  const GetRepositoryPlatformLogsConfig({
    required this.loggingState,
    required this.severityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingState': loggingState,
      'severityLevel': severityLevel,
    };
  }

  factory GetRepositoryPlatformLogsConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryPlatformLogsConfig(
      loggingState: pulumi.Input.fromValue(map['loggingState'] as String),
      severityLevel: pulumi.Input.fromValue(map['severityLevel'] as String),
    );
  }
}
