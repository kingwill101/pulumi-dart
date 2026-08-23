// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_endpoint_policy_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getEndpointPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_endpoint_policy_iam_policy_networkservices_v1beta1_args_doc}
class GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args({
    required this.endpointPolicyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPolicyId': endpointPolicyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args(
      endpointPolicyId: pulumi.Input.fromValue(map['endpointPolicyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
