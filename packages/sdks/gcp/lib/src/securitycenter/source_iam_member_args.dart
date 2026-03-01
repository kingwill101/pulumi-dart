// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_member_condition.dart';

/// {@template pulumi_securitycenter_source_iam_member_source_iam_member_args_doc}
/// The set of arguments for SourceIamMember.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_source_iam_member_source_iam_member_args_doc}
class SourceIamMemberArgs {
  final pulumi.Input<SourceIamMemberCondition>? condition;
  final pulumi.Input<String> member;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> role;
  final pulumi.Input<String> source;

  /// Creates a new [SourceIamMemberArgs].
  /// [condition] Optional.
  /// [member] Required.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [role] Required.
  /// [source] Required.
  SourceIamMemberArgs({
    pulumi.Output<SourceIamMemberCondition>? condition,
    required pulumi.Output<String> member,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> role,
    required pulumi.Output<String> source,
  }) :
      condition = pulumi.Input.asOptionalInput<SourceIamMemberCondition>(condition),
      member = pulumi.Input.asInput<String>(member),
      organization = pulumi.Input.asInput<String>(organization),
      role = pulumi.Input.asInput<String>(role),
      source = pulumi.Input.asInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SourceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'organization': organization,
      'role': role,
      'source': source,
    };
  }

  factory SourceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<SourceIamMemberCondition>(SourceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      member: pulumi.Output.create<String>(map['member'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

