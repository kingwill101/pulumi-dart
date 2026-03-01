// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentConfigWorkloadsConfigWebServer {
  /// CPU request and limit for Airflow web server.
  final double cpu;
  /// Memory (GB) request and limit for Airflow web server.
  final double memoryGb;
  /// Storage (GB) request and limit for Airflow web server.
  final double storageGb;

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
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
      storageGb: map['storageGb'] as double,
    );
  }
}

