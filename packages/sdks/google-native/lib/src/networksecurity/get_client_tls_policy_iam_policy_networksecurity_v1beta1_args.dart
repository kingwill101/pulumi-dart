// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_client_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getClientTlsPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_client_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
class GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args].
  /// [clientTlsPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args({
    required this.clientTlsPolicyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTlsPolicyId': clientTlsPolicyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args(
      clientTlsPolicyId: (map['clientTlsPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

