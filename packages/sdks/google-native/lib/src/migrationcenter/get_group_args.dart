// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_group_args_doc}
class GetGroupArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupArgs].
  /// [groupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGroupArgs({
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

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

