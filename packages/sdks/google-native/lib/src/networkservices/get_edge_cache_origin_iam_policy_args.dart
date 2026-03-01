// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_edge_cache_origin_iam_policy_args_doc}
/// Arguments for getEdgeCacheOriginIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_edge_cache_origin_iam_policy_args_doc}
class GetEdgeCacheOriginIamPolicyArgs {
  final pulumi.Input<String> edgeCacheOriginId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEdgeCacheOriginIamPolicyArgs].
  /// [edgeCacheOriginId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEdgeCacheOriginIamPolicyArgs({
    required pulumi.Output<String> edgeCacheOriginId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      edgeCacheOriginId = pulumi.Input.asInput<String>(edgeCacheOriginId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeCacheOriginId': edgeCacheOriginId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEdgeCacheOriginIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheOriginIamPolicyArgs(
      edgeCacheOriginId: pulumi.Output.create<String>(map['edgeCacheOriginId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

