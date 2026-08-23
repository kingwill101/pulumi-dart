// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineLoggingConfig {
  /// The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry. Logs at severitiy ≥ this value will be sent, unless it is NONE.
  /// Possible values are: `NONE`, `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final pulumi.Input<String>? logSeverity;

  /// Creates a new [PipelineLoggingConfig].
  /// [logSeverity] The minimum severity of logs that will be sent to Stackdriver/Platform
  const PipelineLoggingConfig({
    this.logSeverity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSeverity': ?logSeverity,
    };
  }

  factory PipelineLoggingConfig.fromMap(Map<String, dynamic> map) {
    return PipelineLoggingConfig(
      logSeverity: (() { final guardedValue = map['logSeverity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
