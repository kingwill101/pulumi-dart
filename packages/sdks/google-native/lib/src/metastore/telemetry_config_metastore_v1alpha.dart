// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_config_log_format_metastore_v1alpha.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1alpha {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<TelemetryConfigLogFormatMetastoreV1alpha>? logFormat;

  /// Creates a new [TelemetryConfigMetastoreV1alpha].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigMetastoreV1alpha({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?pulumi.Input.mapOptionalInputValue<TelemetryConfigLogFormatMetastoreV1alpha, String>(logFormat, (value) => value.value),
    };
  }

  factory TelemetryConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1alpha(
      logFormat: map['logFormat'] == null ? null : (TelemetryConfigLogFormatMetastoreV1alpha.fromValue(map['logFormat'] as String)).input(),
    );
  }
}

