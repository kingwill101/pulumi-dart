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
    required this.edgeCacheOriginId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      edgeCacheOriginId: (map['edgeCacheOriginId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

