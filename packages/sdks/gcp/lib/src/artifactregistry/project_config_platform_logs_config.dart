// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectConfigPlatformLogsConfig {
  /// The state of the platform logs: enabled or disabled.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? loggingState;
  /// The severity level for the logs. Logs will be generated if their
  /// severity level is &gt;= than the value of the severity level mentioned here.
  /// Possible values are: `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final pulumi.Input<String>? severityLevel;

  /// Creates a new [ProjectConfigPlatformLogsConfig].
  /// [loggingState] The state of the platform logs: enabled or disabled.
  /// [severityLevel] The severity level for the logs. Logs will be generated if their
  const ProjectConfigPlatformLogsConfig({
    this.loggingState,
    this.severityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingState': ?loggingState,
      'severityLevel': ?severityLevel,
    };
  }

  factory ProjectConfigPlatformLogsConfig.fromMap(Map<String, dynamic> map) {
    return ProjectConfigPlatformLogsConfig(
      loggingState: (() { final guardedValue = map['loggingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severityLevel: (() { final guardedValue = map['severityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
