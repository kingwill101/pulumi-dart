// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentConfigWorkloadsConfigWebServer {
  /// CPU request and limit for Airflow web server.
  final double? cpu;
  /// Memory (GB) request and limit for Airflow web server.
  final double? memoryGb;
  /// Storage (GB) request and limit for Airflow web server.
  final double? storageGb;

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
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      storageGb: map['storageGb'] == null ? null : map['storageGb'] as double,
    );
  }
}

