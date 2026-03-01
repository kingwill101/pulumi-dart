// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format_metastore_v1alpha.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1alpha {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormatMetastoreV1alpha? logFormat;

  /// Creates a new [TelemetryConfigMetastoreV1alpha].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigMetastoreV1alpha({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?logFormat == null ? null : logFormat!.value,
    };
  }

  factory TelemetryConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1alpha(
      logFormat: map['logFormat'] == null ? null : TelemetryConfigLogFormatMetastoreV1alpha.fromValue(map['logFormat'] as String),
    );
  }
}

