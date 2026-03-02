// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_group_migrationcenter_v1alpha1_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_group_migrationcenter_v1alpha1_args_doc}
class GetGroupMigrationcenterV1alpha1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupMigrationcenterV1alpha1Args].
  /// [groupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGroupMigrationcenterV1alpha1Args({
    required this.groupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGroupMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupMigrationcenterV1alpha1Args(
      groupId: (map['groupId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

