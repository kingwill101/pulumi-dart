// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_server_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getServerTlsPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_server_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
class GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serverTlsPolicyId] Required.
  const GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serverTlsPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serverTlsPolicyId': serverTlsPolicyId,
    };
  }

  factory GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverTlsPolicyId: pulumi.Input.fromValue(map['serverTlsPolicyId'] as String),
    );
  }
}
