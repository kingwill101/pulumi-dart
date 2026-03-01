// ignore_for_file: unused_element, unnecessary_cast

import 'share_settings_share_type_compute_beta.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsComputeBeta {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String>? projectMap;
  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final List<String>? projects;
  /// Type of sharing for this shared-reservation
  final ShareSettingsShareTypeComputeBeta? shareType;

  /// Creates a new [ShareSettingsComputeBeta].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [projects] A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  ShareSettingsComputeBeta({
    this.projectMap,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': ?projectMap,
      'projects': ?projects,
      'shareType': ?shareType == null ? null : shareType!.value,
    };
  }

  factory ShareSettingsComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShareSettingsComputeBeta(
      projectMap: map['projectMap'] == null ? null : (map['projectMap'] as Map).cast<String, String>(),
      projects: map['projects'] == null ? null : (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] == null ? null : ShareSettingsShareTypeComputeBeta.fromValue(map['shareType'] as String),
    );
  }
}

