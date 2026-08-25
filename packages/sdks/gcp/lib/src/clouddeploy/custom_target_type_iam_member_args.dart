// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_member_condition.dart';

/// {@template pulumi_clouddeploy_custom_target_type_iam_member_custom_target_type_iam_member_args_doc}
/// The set of arguments for CustomTargetTypeIamMember.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_custom_target_type_iam_member_custom_target_type_iam_member_args_doc}
class CustomTargetTypeIamMemberArgs {
  final pulumi.Input<CustomTargetTypeIamMemberCondition?>? condition;
  final pulumi.Input<String?>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? project;
  final pulumi.Input<String> role;

  /// Creates a new [CustomTargetTypeIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  const CustomTargetTypeIamMemberArgs({
    this.condition,
    this.location,
    required this.member,
    this.name,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory CustomTargetTypeIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamMemberArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: pulumi.Input.fromValue(map['member'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
