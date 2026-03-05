// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsResponseComputeBeta {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<Map<String, String>> projectMap;
  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<List<String>> projects;
  /// Type of sharing for this shared-reservation
  final pulumi.Input<String> shareType;

  /// Creates a new [ShareSettingsResponseComputeBeta].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [projects] A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  ShareSettingsResponseComputeBeta({
    required this.projectMap,
    required this.projects,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': projectMap,
      'projects': projects,
      'shareType': shareType,
    };
  }

  factory ShareSettingsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShareSettingsResponseComputeBeta(
      projectMap: pulumi.Input.fromValue((map['projectMap'] as Map).cast<String, String>()),
      projects: pulumi.Input.fromValue((map['projects'] as List).cast<String>()),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
    );
  }
}

