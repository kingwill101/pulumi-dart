// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Permissions granted to the AW Partner SA account for the customer workload
class GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions {
  /// Optional. Allow partner to view violation alerts.
  final pulumi.Input<bool>? assuredWorkloadsMonitoring;
  /// Allow the partner to view inspectability logs and monitoring violations.
  final pulumi.Input<bool>? dataLogsViewer;
  /// Optional. Allow partner to view access approval logs.
  final pulumi.Input<bool>? serviceAccessApprover;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions].
  /// [assuredWorkloadsMonitoring] Optional. Allow partner to view violation alerts.
  /// [dataLogsViewer] Allow the partner to view inspectability logs and monitoring violations.
  /// [serviceAccessApprover] Optional. Allow partner to view access approval logs.
  const GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions({
    this.assuredWorkloadsMonitoring,
    this.dataLogsViewer,
    this.serviceAccessApprover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredWorkloadsMonitoring': ?assuredWorkloadsMonitoring,
      'dataLogsViewer': ?dataLogsViewer,
      'serviceAccessApprover': ?serviceAccessApprover,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions(
      assuredWorkloadsMonitoring: (() { final guardedValue = map['assuredWorkloadsMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataLogsViewer: (() { final guardedValue = map['dataLogsViewer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccessApprover: (() { final guardedValue = map['serviceAccessApprover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
