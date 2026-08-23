// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MessageBusLoggingConfig {
  /// Optional. The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry. Logs at severitiy ≥ this value will be sent, unless it is NONE.
  /// Possible values are: `NONE`, `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final pulumi.Input<String>? logSeverity;

  /// Creates a new [MessageBusLoggingConfig].
  /// [logSeverity] Optional. The minimum severity of logs that will be sent to Stackdriver/Platform
  const MessageBusLoggingConfig({
    this.logSeverity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSeverity': ?logSeverity,
    };
  }

  factory MessageBusLoggingConfig.fromMap(Map<String, dynamic> map) {
    return MessageBusLoggingConfig(
      logSeverity: (() { final guardedValue = map['logSeverity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
