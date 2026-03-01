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
    required pulumi.Output<String> federationId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      federationId = pulumi.Input.asInput<String>(federationId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      federationId: pulumi.Output.create<String>(map['federationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

