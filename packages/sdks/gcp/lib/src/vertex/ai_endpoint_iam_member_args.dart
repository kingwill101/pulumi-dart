// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_member_condition.dart';

/// {@template pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
/// The set of arguments for AiEndpointIamMember.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
class AiEndpointIamMemberArgs {
  final pulumi.Input<AiEndpointIamMemberCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [AiEndpointIamMemberArgs].
  /// [condition] Optional.
  /// [endpoint] Required.
  /// [location] Optional.
  /// [member] Required.
  /// [project] Optional.
  /// [role] Required.
  const AiEndpointIamMemberArgs({
    this.condition,
    required this.endpoint,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiEndpointIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'endpoint': endpoint,
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory AiEndpointIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamMemberArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: pulumi.Input.fromValue(map['member'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

