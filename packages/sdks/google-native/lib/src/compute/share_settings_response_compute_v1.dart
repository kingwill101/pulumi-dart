// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsResponseComputeV1 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<Map<String, String>> projectMap;
  /// Type of sharing for this shared-reservation
  final pulumi.Input<String> shareType;

  /// Creates a new [ShareSettingsResponseComputeV1].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  const ShareSettingsResponseComputeV1({
    required this.projectMap,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': projectMap,
      'shareType': shareType,
    };
  }

  factory ShareSettingsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ShareSettingsResponseComputeV1(
      projectMap: pulumi.Input.fromValue((map['projectMap'] as Map).cast<String, String>()),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
    );
  }
}

