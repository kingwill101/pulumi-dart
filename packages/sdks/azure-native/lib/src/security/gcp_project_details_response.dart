// ignore_for_file: unused_element, unnecessary_cast


/// The details about the project represented by the security connector
class GcpProjectDetailsResponse {
  /// The GCP Project id
  final String? projectId;
  /// GCP project name
  final String projectName;
  /// The unique GCP Project number
  final String? projectNumber;
  /// The GCP workload identity federation pool id
  final String workloadIdentityPoolId;

  /// Creates a new [GcpProjectDetailsResponse].
  /// [projectId] The GCP Project id
  /// [projectName] GCP project name
  /// [projectNumber] The unique GCP Project number
  /// [workloadIdentityPoolId] The GCP workload identity federation pool id
  GcpProjectDetailsResponse({
    this.projectId,
    required this.projectName,
    this.projectNumber,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'projectName': projectName,
      'projectNumber': ?projectNumber,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GcpProjectDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GcpProjectDetailsResponse(
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      projectName: map['projectName'] as String,
      projectNumber: map['projectNumber'] == null ? null : map['projectNumber'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}

