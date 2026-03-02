// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instant_snapshot_args_doc}
/// Arguments for getRegionInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instant_snapshot_args_doc}
class GetRegionInstantSnapshotArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstantSnapshotArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstantSnapshotArgs({
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

  factory GetRegionInstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstantSnapshotArgs(
      instantSnapshot: (map['instantSnapshot'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

