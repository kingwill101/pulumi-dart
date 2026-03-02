// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_instant_snapshot_compute_beta_args_doc}
/// Arguments for getRegionInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_instant_snapshot_compute_beta_args_doc}
class GetRegionInstantSnapshotComputeBetaArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstantSnapshotComputeBetaArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstantSnapshotComputeBetaArgs({
    required this.instantSnapshot,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantSnapshot': instantSnapshot,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstantSnapshotComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstantSnapshotComputeBetaArgs(
      instantSnapshot: (map['instantSnapshot'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

