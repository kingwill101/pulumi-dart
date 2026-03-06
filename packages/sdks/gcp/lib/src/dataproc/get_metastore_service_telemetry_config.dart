// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceTelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs. Default value: "JSON" Possible values: ["LEGACY", "JSON"]
  final pulumi.Input<String> logFormat;

  /// Creates a new [GetMetastoreServiceTelemetryConfig].
  /// [logFormat] The output format of the Dataproc Metastore service's logs. Default value: "JSON" Possible values: ["LEGACY", "JSON"]
  const GetMetastoreServiceTelemetryConfig({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': logFormat,
    };
  }

  factory GetMetastoreServiceTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceTelemetryConfig(
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
    );
  }
}

