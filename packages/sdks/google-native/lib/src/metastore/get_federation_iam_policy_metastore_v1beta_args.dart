// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_federation_iam_policy_metastore_v1beta_args_doc}
/// Arguments for getFederationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_federation_iam_policy_metastore_v1beta_args_doc}
class GetFederationIamPolicyMetastoreV1betaArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFederationIamPolicyMetastoreV1betaArgs].
  /// [federationId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFederationIamPolicyMetastoreV1betaArgs({
    required this.federationId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federationId': federationId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFederationIamPolicyMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationIamPolicyMetastoreV1betaArgs(
      federationId: (map['federationId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

