// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_agent_registry_endpoint_iam_policy_get_agent_registry_endpoint_iam_policy_args_doc}
/// Arguments for getAgentRegistryEndpointIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_agent_registry_endpoint_iam_policy_get_agent_registry_endpoint_iam_policy_args_doc}
class GetAgentRegistryEndpointIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> endpointId;
  /// The location of the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentRegistryEndpointIamPolicyArgs].
  /// [endpointId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location of the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  const GetAgentRegistryEndpointIamPolicyArgs({
    required this.endpointId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAgentRegistryEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentRegistryEndpointIamPolicyArgs(
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
