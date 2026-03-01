// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_binding_condition.dart';

/// Input properties used for looking up and filtering AiEndpointIamBinding resources.
class AiEndpointIamBindingState {
  final pulumi.Input<AiEndpointIamBindingCondition>? condition;
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [AiEndpointIamBindingState].
  /// [condition] Optional.
  /// [endpoint] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [members] Optional.
  /// [project] Optional.
  /// [role] Optional.
  AiEndpointIamBindingState({
    pulumi.Output<AiEndpointIamBindingCondition>? condition,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<AiEndpointIamBindingCondition>(condition),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiEndpointIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'etag': ?etag,
      'location': ?location,
      'members': ?members,
      'project': ?project,
      'role': ?role,
    };
  }

  factory AiEndpointIamBindingState.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<AiEndpointIamBindingCondition>(AiEndpointIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

