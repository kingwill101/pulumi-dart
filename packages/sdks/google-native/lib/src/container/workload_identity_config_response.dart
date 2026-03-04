// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigResponse {
  /// The workload pool to attach all Kubernetes service accounts to.
  final pulumi.Input<String> workloadPool;

  /// Creates a new [WorkloadIdentityConfigResponse].
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  WorkloadIdentityConfigResponse({required this.workloadPool});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadPool': workloadPool};
  }

  factory WorkloadIdentityConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfigResponse(
      workloadPool: pulumi.Input.fromValue(map['workloadPool'] as String),
    );
  }
}
