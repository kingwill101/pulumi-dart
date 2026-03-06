// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponse {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<String> logFormat;

  /// Creates a new [TelemetryConfigResponse].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  const TelemetryConfigResponse({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': logFormat,
    };
  }

  factory TelemetryConfigResponse.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigResponse(
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
    );
  }
}

