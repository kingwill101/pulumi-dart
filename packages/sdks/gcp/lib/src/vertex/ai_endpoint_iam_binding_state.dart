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
    this.condition,
    this.endpoint,
    this.etag,
    this.location,
    this.members,
    this.project,
    this.role,
  });

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
      condition: map['condition'] == null ? null : (AiEndpointIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

