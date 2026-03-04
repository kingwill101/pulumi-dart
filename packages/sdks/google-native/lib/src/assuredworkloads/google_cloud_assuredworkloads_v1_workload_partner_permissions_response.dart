// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Permissions granted to the AW Partner SA account for the customer workload
class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse {
  /// Optional. Allow partner to view violation alerts.
  final pulumi.Input<bool> assuredWorkloadsMonitoring;

  /// Allow the partner to view inspectability logs and monitoring violations.
  final pulumi.Input<bool> dataLogsViewer;

  /// Optional. Allow partner to view access approval logs.
  final pulumi.Input<bool> serviceAccessApprover;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse].
  /// [assuredWorkloadsMonitoring] Optional. Allow partner to view violation alerts.
  /// [dataLogsViewer] Allow the partner to view inspectability logs and monitoring violations.
  /// [serviceAccessApprover] Optional. Allow partner to view access approval logs.
  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse({
    required this.assuredWorkloadsMonitoring,
    required this.dataLogsViewer,
    required this.serviceAccessApprover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredWorkloadsMonitoring': assuredWorkloadsMonitoring,
      'dataLogsViewer': dataLogsViewer,
      'serviceAccessApprover': serviceAccessApprover,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse(
      assuredWorkloadsMonitoring: pulumi.Input.fromValue(
        map['assuredWorkloadsMonitoring'] as bool,
      ),
      dataLogsViewer: pulumi.Input.fromValue(map['dataLogsViewer'] as bool),
      serviceAccessApprover: pulumi.Input.fromValue(
        map['serviceAccessApprover'] as bool,
      ),
    );
  }
}
