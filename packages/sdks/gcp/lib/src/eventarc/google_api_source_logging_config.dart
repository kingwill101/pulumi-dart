// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleApiSourceLoggingConfig {
  /// The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry. Logs at severitiy ≥ this value will be sent, unless it is NONE.
  /// Possible values are: `NONE`, `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final pulumi.Input<String>? logSeverity;

  /// Creates a new [GoogleApiSourceLoggingConfig].
  /// [logSeverity] The minimum severity of logs that will be sent to Stackdriver/Platform
  GoogleApiSourceLoggingConfig({
    this.logSeverity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSeverity': ?logSeverity,
    };
  }

  factory GoogleApiSourceLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceLoggingConfig(
      logSeverity: map['logSeverity'] == null ? null : (map['logSeverity'] as String).input(),
    );
  }
}

