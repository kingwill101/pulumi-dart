// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format_metastore_v1beta.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1beta {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormatMetastoreV1beta? logFormat;

  /// Creates a new [TelemetryConfigMetastoreV1beta].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigMetastoreV1beta({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?logFormat == null ? null : logFormat!.value,
    };
  }

  factory TelemetryConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1beta(
      logFormat: map['logFormat'] == null ? null : TelemetryConfigLogFormatMetastoreV1beta.fromValue(map['logFormat'] as String),
    );
  }
}

