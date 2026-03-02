// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details about the project represented by the security connector
class GcpProjectDetails {
  /// The GCP Project id
  final pulumi.Input<String>? projectId;
  /// The unique GCP Project number
  final pulumi.Input<String>? projectNumber;

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
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber']! as String).input(),
    );
  }
}

