// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_binding_condition.dart';

/// {@template pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
/// The set of arguments for AiEndpointIamBinding.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
class AiEndpointIamBindingArgs {
  final pulumi.Input<AiEndpointIamBindingCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [AiEndpointIamBindingArgs].
  /// [condition] Optional.
  /// [endpoint] Required.
  /// [location] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [role] Required.
  AiEndpointIamBindingArgs({
    this.condition,
    required this.endpoint,
    this.location,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'endpoint': endpoint,
      'location': ?location,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory AiEndpointIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingArgs(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiEndpointIamBindingCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
