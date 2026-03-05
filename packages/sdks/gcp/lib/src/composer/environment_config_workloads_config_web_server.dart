// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigWorkloadsConfigWebServer {
  /// CPU request and limit for Airflow web server.
  final pulumi.Input<double>? cpu;
  /// Memory (GB) request and limit for Airflow web server.
  final pulumi.Input<double>? memoryGb;
  /// Storage (GB) request and limit for Airflow web server.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigWebServer].
  /// [cpu] CPU request and limit for Airflow web server.
  /// [memoryGb] Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Storage (GB) request and limit for Airflow web server.
  EnvironmentConfigWorkloadsConfigWebServer({
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

  factory EnvironmentConfigWorkloadsConfigWebServer.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigWebServer(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageGb: (() { final guardedValue = map['storageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

