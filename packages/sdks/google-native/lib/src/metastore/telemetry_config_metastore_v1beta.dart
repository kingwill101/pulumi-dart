// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_config_log_format_metastore_v1beta.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1beta {
  /// The output format of the Dataproc Metastore service's logs.
  final pulumi.Input<TelemetryConfigLogFormatMetastoreV1beta>? logFormat;

  /// Creates a new [TelemetryConfigMetastoreV1beta].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigMetastoreV1beta({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?pulumi.Input.mapOptionalInputValue<TelemetryConfigLogFormatMetastoreV1beta, String>(logFormat, (value) => value.wireValue),
    };
  }

  factory TelemetryConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1beta(
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryConfigLogFormatMetastoreV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}

