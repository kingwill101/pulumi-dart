// ignore_for_file: unused_element, unnecessary_cast


/// The details about the project represented by the security connector
class GcpProjectDetails {
  /// The GCP Project id
  final String? projectId;
  /// The unique GCP Project number
  final String? projectNumber;

  /// Creates a new [GcpProjectDetails].
  /// [projectId] The GCP Project id
  /// [projectNumber] The unique GCP Project number
  GcpProjectDetails({
    this.projectId,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'projectNumber': ?projectNumber,
    };
  }

  factory GcpProjectDetails.fromMap(Map<String, dynamic> map) {
    return GcpProjectDetails(
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      projectNumber: map['projectNumber'] == null ? null : map['projectNumber'] as String,
    );
  }
}

