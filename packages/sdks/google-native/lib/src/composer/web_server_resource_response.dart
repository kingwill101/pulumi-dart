// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow web server.
class WebServerResourceResponse {
  /// Optional. CPU request and limit for Airflow web server.
  final pulumi.Input<double> cpu;
  /// Optional. Memory (GB) request and limit for Airflow web server.
  final pulumi.Input<double> memoryGb;
  /// Optional. Storage (GB) request and limit for Airflow web server.
  final pulumi.Input<double> storageGb;

  /// Creates a new [WebServerResourceResponse].
  /// [cpu] Optional. CPU request and limit for Airflow web server.
  /// [memoryGb] Optional. Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Optional. Storage (GB) request and limit for Airflow web server.
  WebServerResourceResponse({
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

  factory WebServerResourceResponse.fromMap(Map<String, dynamic> map) {
    return WebServerResourceResponse(
      cpu: (map['cpu'] as double).input(),
      memoryGb: (map['memoryGb'] as double).input(),
      storageGb: (map['storageGb'] as double).input(),
    );
  }
}

