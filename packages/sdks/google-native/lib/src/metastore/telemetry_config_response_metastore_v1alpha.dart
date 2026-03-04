// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponseMetastoreV1alpha {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<String> logFormat;

  /// Creates a new [TelemetryConfigResponseMetastoreV1alpha].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigResponseMetastoreV1alpha({required this.logFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logFormat': logFormat};
  }

  factory TelemetryConfigResponseMetastoreV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return TelemetryConfigResponseMetastoreV1alpha(
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
    );
  }
}
