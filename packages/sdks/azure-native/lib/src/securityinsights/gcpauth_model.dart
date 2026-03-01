// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication for all GCP kind connectors.
class GCPAuthModel {
  /// GCP Project Number
  final String projectNumber;
  /// GCP Service Account Email
  final String serviceAccountEmail;
  /// Type of paging
  /// Expected value is 'GCP'.
  final String type;
  /// GCP Workload Identity Provider ID
  final String workloadIdentityProviderId;

  /// Creates a new [GCPAuthModel].
  /// [projectNumber] GCP Project Number
  /// [serviceAccountEmail] GCP Service Account Email
  /// [type] Type of paging
  /// [workloadIdentityProviderId] GCP Workload Identity Provider ID
  GCPAuthModel({
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

  factory GCPAuthModel.fromMap(Map<String, dynamic> map) {
    return GCPAuthModel(
      projectNumber: map['projectNumber'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      type: map['type'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] as String,
    );
  }
}

