// ignore_for_file: unused_element, unnecessary_cast


/// Driver scheduling configuration.
class DriverSchedulingConfigResponse {
  /// The amount of memory in MB the driver is requesting.
  final int memoryMb;
  /// The number of vCPUs the driver is requesting.
  final int vcores;

  /// Creates a new [DriverSchedulingConfigResponse].
  /// [memoryMb] The amount of memory in MB the driver is requesting.
  /// [vcores] The number of vCPUs the driver is requesting.
  DriverSchedulingConfigResponse({
    required this.memoryMb,
    required this.vcores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryMb': memoryMb,
      'vcores': vcores,
    };
  }

  factory DriverSchedulingConfigResponse.fromMap(Map<String, dynamic> map) {
    return DriverSchedulingConfigResponse(
      memoryMb: map['memoryMb'] as int,
      vcores: map['vcores'] as int,
    );
  }
}

