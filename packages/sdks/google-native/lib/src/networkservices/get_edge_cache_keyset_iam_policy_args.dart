// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_edge_cache_keyset_iam_policy_args_doc}
/// Arguments for getEdgeCacheKeysetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_edge_cache_keyset_iam_policy_args_doc}
class GetEdgeCacheKeysetIamPolicyArgs {
  final pulumi.Input<String> edgeCacheKeysetId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEdgeCacheKeysetIamPolicyArgs].
  /// [edgeCacheKeysetId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEdgeCacheKeysetIamPolicyArgs({
    required pulumi.Output<String> edgeCacheKeysetId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      edgeCacheKeysetId = pulumi.Input.asInput<String>(edgeCacheKeysetId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeCacheKeysetId': edgeCacheKeysetId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEdgeCacheKeysetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheKeysetIamPolicyArgs(
      edgeCacheKeysetId: pulumi.Output.create<String>(map['edgeCacheKeysetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

