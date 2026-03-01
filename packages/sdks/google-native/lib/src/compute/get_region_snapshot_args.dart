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
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> snapshot,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      snapshot = pulumi.Input.asInput<String>(snapshot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'snapshot': snapshot,
    };
  }

  factory GetRegionSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSnapshotArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      snapshot: pulumi.Output.create<String>(map['snapshot'] as String),
    );
  }
}

