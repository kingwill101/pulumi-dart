// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow web server.
class WebServerResourceComposerV1beta1 {
  /// Optional. CPU request and limit for Airflow web server.
  final pulumi.Input<double>? cpu;
  /// Optional. Memory (GB) request and limit for Airflow web server.
  final pulumi.Input<double>? memoryGb;
  /// Optional. Storage (GB) request and limit for Airflow web server.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [WebServerResourceComposerV1beta1].
  /// [cpu] Optional. CPU request and limit for Airflow web server.
  /// [memoryGb] Optional. Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Optional. Storage (GB) request and limit for Airflow web server.
  const WebServerResourceComposerV1beta1({
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
      'storageGb': ?storageGb,
    };
  }

  factory WebServerResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerResourceComposerV1beta1(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageGb: (() { final guardedValue = map['storageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

