// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_config_log_format.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<TelemetryConfigLogFormat>? logFormat;

  /// Creates a new [TelemetryConfig].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfig({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?pulumi.Input.mapOptionalInputValue<TelemetryConfigLogFormat, String>(logFormat, (value) => value.value),
    };
  }

  factory TelemetryConfig.fromMap(Map<String, dynamic> map) {
    return TelemetryConfig(
      logFormat: map['logFormat'] == null ? null : (TelemetryConfigLogFormat.fromValue(map['logFormat']! as String)).input(),
    );
  }
}

