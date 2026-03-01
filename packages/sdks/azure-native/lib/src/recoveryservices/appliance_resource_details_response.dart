// ignore_for_file: unused_element, unnecessary_cast


/// Details of the appliance resource.
class ApplianceResourceDetailsResponse {
  /// A value indicating the total capacity of appliance resource.
  final double capacity;
  /// A value indicating the utilization percentage by gateway agent on appliance.
  final double processUtilization;
  /// A value indicating the status of appliance resource.
  final String status;
  /// A value indicating the total utilization percentage for all processes on the appliance.
  final double totalUtilization;

  /// Creates a new [ApplianceResourceDetailsResponse].
  /// [capacity] A value indicating the total capacity of appliance resource.
  /// [processUtilization] A value indicating the utilization percentage by gateway agent on appliance.
  /// [status] A value indicating the status of appliance resource.
  /// [totalUtilization] A value indicating the total utilization percentage for all processes on the appliance.
  ApplianceResourceDetailsResponse({
    required this.capacity,
    required this.processUtilization,
    required this.status,
    required this.totalUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'processUtilization': processUtilization,
      'status': status,
      'totalUtilization': totalUtilization,
    };
  }

  factory ApplianceResourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceResourceDetailsResponse(
      capacity: map['capacity'] as double,
      processUtilization: map['processUtilization'] as double,
      status: map['status'] as String,
      totalUtilization: map['totalUtilization'] as double,
    );
  }
}

