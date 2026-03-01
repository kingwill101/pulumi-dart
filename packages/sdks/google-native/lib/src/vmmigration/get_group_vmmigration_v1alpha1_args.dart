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
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGroupVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupVmmigrationV1alpha1Args(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

