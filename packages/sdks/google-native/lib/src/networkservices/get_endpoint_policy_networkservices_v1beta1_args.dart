// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_endpoint_policy_networkservices_v1beta1_args_doc}
/// Arguments for getEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_endpoint_policy_networkservices_v1beta1_args_doc}
class GetEndpointPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyNetworkservicesV1beta1Args].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEndpointPolicyNetworkservicesV1beta1Args({
    required pulumi.Output<String> endpointPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      endpointPolicyId = pulumi.Input.asInput<String>(endpointPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPolicyId': endpointPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEndpointPolicyNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyNetworkservicesV1beta1Args(
      endpointPolicyId: pulumi.Output.create<String>(map['endpointPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

