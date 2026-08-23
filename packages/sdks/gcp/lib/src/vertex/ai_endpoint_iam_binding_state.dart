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
  const AiEndpointIamBindingState({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
