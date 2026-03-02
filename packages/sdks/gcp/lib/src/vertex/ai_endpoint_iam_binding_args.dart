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
      'condition': ?pulumi.Input.mapOptionalInputValue<AiEndpointIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'endpoint': endpoint,
      'location': ?location,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory AiEndpointIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingArgs(
      condition: map['condition'] == null ? null : (AiEndpointIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

