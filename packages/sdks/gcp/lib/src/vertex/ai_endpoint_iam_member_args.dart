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
  AiEndpointIamMemberArgs({
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
      condition: map['condition'] == null ? null : (AiEndpointIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      member: (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

