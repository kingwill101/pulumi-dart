// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_member_condition.dart';

/// Input properties used for looking up and filtering SourceIamMember resources.
class SourceIamMemberState {
  final pulumi.Input<SourceIamMemberCondition?>? condition;
  final pulumi.Input<String?>? etag;
  final pulumi.Input<String?>? member;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String?>? organization;
  final pulumi.Input<String?>? role;
  final pulumi.Input<String?>? source;

  /// Creates a new [SourceIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [member] Optional.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [role] Optional.
  /// [source] Optional.
  const SourceIamMemberState({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
