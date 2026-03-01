// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// {@template pulumi_securitycenter_instance_iam_member_instance_iam_member_args_doc}
/// The set of arguments for InstanceIamMember.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_instance_iam_member_instance_iam_member_args_doc}
class InstanceIamMemberArgs {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String> member;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamMemberArgs].
  /// [condition] Optional.
  /// [member] Required.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  /// [role] Required.
  InstanceIamMemberArgs({
    pulumi.Output<InstanceIamMemberCondition>? condition,
    required pulumi.Output<String> member,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamMemberCondition>(condition),
      member = pulumi.Input.asInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'role': role,
    };
  }

  factory InstanceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamMemberCondition>(InstanceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      member: pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

