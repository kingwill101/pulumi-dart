// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_endpoint_iam_policy_get_ai_endpoint_iam_policy_args_doc}
/// Arguments for getAiEndpointIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_endpoint_iam_policy_get_ai_endpoint_iam_policy_args_doc}
class GetAiEndpointIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> endpoint;
  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAiEndpointIamPolicyArgs].
  /// [endpoint] Used to find the parent resource to bind the IAM policy to
  /// [location] The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  GetAiEndpointIamPolicyArgs({
    required pulumi.Output<String> endpoint,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      endpoint = pulumi.Input.asInput<String>(endpoint),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAiEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiEndpointIamPolicyArgs(
      endpoint: pulumi.Output.create<String>(map['endpoint'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

