// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// {@template pulumi_securesourcemanager_instance_iam_member_instance_iam_member_args_doc}
/// The set of arguments for InstanceIamMember.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_iam_member_instance_iam_member_args_doc}
class InstanceIamMemberArgs {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamMemberArgs].
  /// [condition] Optional.
  /// [instanceId] Required.
  /// [location] Optional.
  /// [member] Required.
  /// [project] Optional.
  /// [role] Required.
  InstanceIamMemberArgs({
    pulumi.Output<InstanceIamMemberCondition>? condition,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> member,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamMemberCondition>(condition),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'instanceId': instanceId,
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory InstanceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamMemberCondition>(InstanceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      member: pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

