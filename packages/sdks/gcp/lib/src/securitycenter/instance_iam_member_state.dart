// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// Input properties used for looking up and filtering InstanceIamMember resources.
class InstanceIamMemberState {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? member;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [member] Optional.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  /// [role] Optional.
  InstanceIamMemberState({
    this.condition,
    this.etag,
    this.member,
    this.name,
    this.project,
    this.region,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory InstanceIamMemberState.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberState(
      condition: map['condition'] == null ? null : (InstanceIamMemberCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      member: map['member'] == null ? null : (map['member']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

