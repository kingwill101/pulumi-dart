// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_member_condition.dart';

/// {@template pulumi_clouddeploy_target_iam_member_target_iam_member_args_doc}
/// The set of arguments for TargetIamMember.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_member_target_iam_member_args_doc}
class TargetIamMemberArgs {
  final pulumi.Input<TargetIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [TargetIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  TargetIamMemberArgs({
    this.condition,
    this.location,
    required this.member,
    this.name,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TargetIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory TargetIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamMemberArgs(
      condition: map['condition'] == null ? null : (TargetIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      member: (map['member'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

