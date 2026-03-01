// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_member_condition.dart';

/// Input properties used for looking up and filtering SourceIamMember resources.
class SourceIamMemberState {
  final pulumi.Input<SourceIamMemberCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? member;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String>? organization;
  final pulumi.Input<String>? role;
  final pulumi.Input<String>? source;

  /// Creates a new [SourceIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [member] Optional.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [role] Optional.
  /// [source] Optional.
  SourceIamMemberState({
    pulumi.Output<SourceIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? role,
    pulumi.Output<String>? source,
  }) :
      condition = pulumi.Input.asOptionalInput<SourceIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      role = pulumi.Input.asOptionalInput<String>(role),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SourceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'organization': ?organization,
      'role': ?role,
      'source': ?source,
    };
  }

  factory SourceIamMemberState.fromMap(Map<String, dynamic> map) {
    return SourceIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<SourceIamMemberCondition>(SourceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

