// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_binding_condition.dart';

/// Input properties used for looking up and filtering SourceIamBinding resources.
class SourceIamBindingState {
  final pulumi.Input<SourceIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<List<String>>? members;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String>? organization;
  final pulumi.Input<String>? role;
  final pulumi.Input<String>? source;

  /// Creates a new [SourceIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [members] Optional.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [role] Optional.
  /// [source] Optional.
  SourceIamBindingState({
    this.condition,
    this.etag,
    this.members,
    this.organization,
    this.role,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SourceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'organization': ?organization,
      'role': ?role,
      'source': ?source,
    };
  }

  factory SourceIamBindingState.fromMap(Map<String, dynamic> map) {
    return SourceIamBindingState(
      condition: map['condition'] == null ? null : (SourceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

