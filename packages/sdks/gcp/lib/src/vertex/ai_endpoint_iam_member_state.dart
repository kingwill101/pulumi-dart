// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_member_condition.dart';

/// Input properties used for looking up and filtering AiEndpointIamMember resources.
class AiEndpointIamMemberState {
  final pulumi.Input<AiEndpointIamMemberCondition>? condition;
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [AiEndpointIamMemberState].
  /// [condition] Optional.
  /// [endpoint] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [member] Optional.
  /// [project] Optional.
  /// [role] Optional.
  AiEndpointIamMemberState({
    this.condition,
    this.endpoint,
    this.etag,
    this.location,
    this.member,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiEndpointIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'etag': ?etag,
      'location': ?location,
      'member': ?member,
      'project': ?project,
      'role': ?role,
    };
  }

  factory AiEndpointIamMemberState.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamMemberState(
      condition: map['condition'] == null ? null : (AiEndpointIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      member: map['member'] == null ? null : (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

