// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// {@template pulumi_workbench_instance_iam_member_instance_iam_member_args_doc}
/// The set of arguments for InstanceIamMember.
/// {@endtemplate}
/// {@macro pulumi_workbench_instance_iam_member_instance_iam_member_args_doc}
class InstanceIamMemberArgs {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  InstanceIamMemberArgs({
    pulumi.Output<InstanceIamMemberCondition>? condition,
    pulumi.Output<String>? location,
    required pulumi.Output<String> member,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamMemberCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory InstanceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamMemberCondition>(InstanceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      member: pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

