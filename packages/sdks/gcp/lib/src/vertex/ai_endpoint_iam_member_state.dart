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
    pulumi.Output<AiEndpointIamMemberCondition>? condition,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<AiEndpointIamMemberCondition>(condition),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<AiEndpointIamMemberCondition>(AiEndpointIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

