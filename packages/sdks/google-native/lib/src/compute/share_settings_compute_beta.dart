// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_settings_share_type_compute_beta.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsComputeBeta {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<Map<String, String>>? projectMap;

  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<List<String>>? projects;

  /// Type of sharing for this shared-reservation
  final pulumi.Input<ShareSettingsShareTypeComputeBeta>? shareType;

  /// Creates a new [ShareSettingsComputeBeta].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [projects] A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  ShareSettingsComputeBeta({this.projectMap, this.projects, this.shareType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': ?projectMap,
      'projects': ?projects,
      'shareType':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettingsShareTypeComputeBeta,
            String
          >(shareType, (value) => value.wireValue),
    };
  }

  factory ShareSettingsComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShareSettingsComputeBeta(
      projectMap: (() {
        final guardedValue = map['projectMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      projects: (() {
        final guardedValue = map['projects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      shareType: (() {
        final guardedValue = map['shareType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShareSettingsShareTypeComputeBeta.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
