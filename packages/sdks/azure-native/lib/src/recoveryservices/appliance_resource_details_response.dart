// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the appliance resource.
class ApplianceResourceDetailsResponse {
  /// A value indicating the total capacity of appliance resource.
  final pulumi.Input<double> capacity;
  /// A value indicating the utilization percentage by gateway agent on appliance.
  final pulumi.Input<double> processUtilization;
  /// A value indicating the status of appliance resource.
  final pulumi.Input<String> status;
  /// A value indicating the total utilization percentage for all processes on the appliance.
  final pulumi.Input<double> totalUtilization;

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
      capacity: pulumi.Input.fromValue(map['capacity'] as double),
      processUtilization: pulumi.Input.fromValue(map['processUtilization'] as double),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalUtilization: pulumi.Input.fromValue(map['totalUtilization'] as double),
    );
  }
}

