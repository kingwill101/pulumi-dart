// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// Input properties used for looking up and filtering InstanceIamMember resources.
class InstanceIamMemberState {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [instanceId] Optional.
  /// [location] Optional.
  /// [member] Optional.
  /// [project] Optional.
  /// [role] Optional.
  InstanceIamMemberState({
    this.condition,
    this.etag,
    this.instanceId,
    this.location,
    this.member,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'instanceId': ?instanceId,
      'location': ?location,
      'member': ?member,
      'project': ?project,
      'role': ?role,
    };
  }

  factory InstanceIamMemberState.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberState(
      condition: map['condition'] == null ? null : (InstanceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      member: map['member'] == null ? null : (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

