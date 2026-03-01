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
    required pulumi.Output<String> endpoint,
    pulumi.Output<String>? location,
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
  }) :
      endpoint = pulumi.Input.asInput<String>(endpoint),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      endpoint: pulumi.Output.create<String>(map['endpoint'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

