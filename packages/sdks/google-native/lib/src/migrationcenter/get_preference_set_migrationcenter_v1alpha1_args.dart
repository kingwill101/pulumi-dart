// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_preference_set_migrationcenter_v1alpha1_args_doc}
/// Arguments for getPreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_preference_set_migrationcenter_v1alpha1_args_doc}
class GetPreferenceSetMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPreferenceSetMigrationcenterV1alpha1Args].
  /// [location] Required.
  /// [preferenceSetId] Required.
  /// [project] Optional.
  GetPreferenceSetMigrationcenterV1alpha1Args({
    required this.location,
    required this.preferenceSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'preferenceSetId': preferenceSetId,
      'project': ?project,
    };
  }

  factory GetPreferenceSetMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetMigrationcenterV1alpha1Args(
      location: (map['location'] as String).input(),
      preferenceSetId: (map['preferenceSetId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

