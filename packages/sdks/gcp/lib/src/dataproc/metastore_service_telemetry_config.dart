// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceTelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs.
  /// Default value is `JSON`.
  /// Possible values are: `LEGACY`, `JSON`.
  final pulumi.Input<String>? logFormat;

  /// Creates a new [MetastoreServiceTelemetryConfig].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  const MetastoreServiceTelemetryConfig({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?logFormat,
    };
  }

  factory MetastoreServiceTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceTelemetryConfig(
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
