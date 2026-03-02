// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponseMetastoreV1beta {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<String> logFormat;

  /// Creates a new [TelemetryConfigResponseMetastoreV1beta].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigResponseMetastoreV1beta({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': logFormat,
    };
  }

  factory TelemetryConfigResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigResponseMetastoreV1beta(
      logFormat: (map['logFormat'] as String).input(),
    );
  }
}

