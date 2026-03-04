// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for all GCP kind connectors.
class GCPAuthModelResponse {
  /// GCP Project Number
  final pulumi.Input<String> projectNumber;

  /// GCP Service Account Email
  final pulumi.Input<String> serviceAccountEmail;

  /// Type of paging
  /// Expected value is 'GCP'.
  final pulumi.Input<String> type;

  /// GCP Workload Identity Provider ID
  final pulumi.Input<String> workloadIdentityProviderId;

  /// Creates a new [GCPAuthModelResponse].
  /// [projectNumber] GCP Project Number
  /// [serviceAccountEmail] GCP Service Account Email
  /// [type] Type of paging
  /// [workloadIdentityProviderId] GCP Workload Identity Provider ID
  GCPAuthModelResponse({
    required this.projectNumber,
    required this.serviceAccountEmail,
    required this.type,
    required this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': projectNumber,
      'serviceAccountEmail': serviceAccountEmail,
      'type': type,
      'workloadIdentityProviderId': workloadIdentityProviderId,
    };
  }

  factory GCPAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return GCPAuthModelResponse(
      projectNumber: pulumi.Input.fromValue(map['projectNumber'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      workloadIdentityProviderId: pulumi.Input.fromValue(
        map['workloadIdentityProviderId'] as String,
      ),
    );
  }
}
