// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigWorkloadsConfigWebServer {
  /// CPU request and limit for Airflow web server.
  final pulumi.Input<double> cpu;
  /// Memory (GB) request and limit for Airflow web server.
  final pulumi.Input<double> memoryGb;
  /// Storage (GB) request and limit for Airflow web server.
  final pulumi.Input<double> storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigWebServer].
  /// [cpu] CPU request and limit for Airflow web server.
  /// [memoryGb] Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Storage (GB) request and limit for Airflow web server.
  GetEnvironmentConfigWorkloadsConfigWebServer({
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

  factory GetEnvironmentConfigWorkloadsConfigWebServer.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigWebServer(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as double),
    );
  }
}

