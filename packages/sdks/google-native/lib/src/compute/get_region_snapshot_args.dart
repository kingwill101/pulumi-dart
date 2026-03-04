// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_snapshot_args_doc}
/// Arguments for getRegionSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_snapshot_args_doc}
class GetRegionSnapshotArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> snapshot;

  /// Creates a new [GetRegionSnapshotArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [snapshot] Required.
  GetRegionSnapshotArgs({
    this.project,
    required this.region,
    required this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'snapshot': snapshot,
    };
  }

  factory GetRegionSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSnapshotArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      snapshot: pulumi.Input.fromValue(map['snapshot'] as String),
    );
  }
}
