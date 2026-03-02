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
    this.condition,
    required this.instanceId,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

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
      condition: map['condition'] == null ? null : (InstanceIamMemberCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      instanceId: (map['instanceId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      member: (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

