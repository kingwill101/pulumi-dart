// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_edge_cache_service_iam_policy_args_doc}
/// Arguments for getEdgeCacheServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_edge_cache_service_iam_policy_args_doc}
class GetEdgeCacheServiceIamPolicyArgs {
  final pulumi.Input<String> edgeCacheServiceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEdgeCacheServiceIamPolicyArgs].
  /// [edgeCacheServiceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEdgeCacheServiceIamPolicyArgs({
    required pulumi.Output<String> edgeCacheServiceId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      edgeCacheServiceId = pulumi.Input.asInput<String>(edgeCacheServiceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeCacheServiceId': edgeCacheServiceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEdgeCacheServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheServiceIamPolicyArgs(
      edgeCacheServiceId: pulumi.Output.create<String>(map['edgeCacheServiceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

