// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instant_snapshot_iam_policy_args_doc}
/// Arguments for getRegionInstantSnapshotIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instant_snapshot_iam_policy_args_doc}
class GetRegionInstantSnapshotIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetRegionInstantSnapshotIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetRegionInstantSnapshotIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.region,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'region': region,
      'resource': resource,
    };
  }

  factory GetRegionInstantSnapshotIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstantSnapshotIamPolicyArgs(
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
