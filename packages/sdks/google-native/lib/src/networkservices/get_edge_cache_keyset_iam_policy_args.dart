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
  const GetEdgeCacheKeysetIamPolicyArgs({
    required this.edgeCacheKeysetId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      edgeCacheKeysetId: pulumi.Input.fromValue(map['edgeCacheKeysetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
