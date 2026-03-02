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
    this.condition,
    this.etag,
    this.member,
    this.organization,
    this.role,
    this.source,
  });

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
      condition: map['condition'] == null ? null : (SourceIamMemberCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      member: map['member'] == null ? null : (map['member']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

