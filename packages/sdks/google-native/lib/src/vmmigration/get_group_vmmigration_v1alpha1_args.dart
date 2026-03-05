// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_group_vmmigration_v1alpha1_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_group_vmmigration_v1alpha1_args_doc}
class GetGroupVmmigrationV1alpha1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupVmmigrationV1alpha1Args].
  /// [groupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGroupVmmigrationV1alpha1Args({
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

  factory GetGroupVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupVmmigrationV1alpha1Args(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

