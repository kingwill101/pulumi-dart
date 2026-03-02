// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
/// The set of arguments for AiEndpointIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
class AiEndpointIamPolicyArgs {
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [AiEndpointIamPolicyArgs].
  /// [endpoint] Required.
  /// [location] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  AiEndpointIamPolicyArgs({
    required this.endpoint,
    this.location,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'location': ?location,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory AiEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamPolicyArgs(
      endpoint: (map['endpoint'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      policyData: (map['policyData'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

