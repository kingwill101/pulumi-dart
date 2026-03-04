// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow web server.
class WebServerResourceResponseComposerV1beta1 {
  /// Optional. CPU request and limit for Airflow web server.
  final pulumi.Input<double> cpu;

  /// Optional. Memory (GB) request and limit for Airflow web server.
  final pulumi.Input<double> memoryGb;

  /// Optional. Storage (GB) request and limit for Airflow web server.
  final pulumi.Input<double> storageGb;

  /// Creates a new [WebServerResourceResponseComposerV1beta1].
  /// [cpu] Optional. CPU request and limit for Airflow web server.
  /// [memoryGb] Optional. Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Optional. Storage (GB) request and limit for Airflow web server.
  WebServerResourceResponseComposerV1beta1({
    required this.cpu,
    required this.memoryGb,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memoryGb': memoryGb,
      'storageGb': storageGb,
    };
  }

  factory WebServerResourceResponseComposerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebServerResourceResponseComposerV1beta1(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as double),
    );
  }
}
