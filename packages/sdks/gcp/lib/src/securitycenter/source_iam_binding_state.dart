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
    pulumi.Output<SourceIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? role,
    pulumi.Output<String>? source,
  }) :
      condition = pulumi.Input.asOptionalInput<SourceIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      role = pulumi.Input.asOptionalInput<String>(role),
      source = pulumi.Input.asOptionalInput<String>(source);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<SourceIamBindingCondition>(SourceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

