// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_volume_snapshot_get_volume_snapshot_args_doc}
/// Arguments for getVolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_get_volume_snapshot_get_volume_snapshot_args_doc}
class GetVolumeSnapshotArgs {
  /// If more than one result is returned, use the most recent volume snapshot.
  ///
  /// &gt; **NOTE:** If more or less than a single match is returned by the search,
  /// Terraform will fail. Ensure that your search is specific enough to return
  /// a single volume snapshot ID only, or use `most_recent` to choose the most recent one.
  final pulumi.Input<bool>? mostRecent;

  /// The name of the volume snapshot.
  final pulumi.Input<String>? name;

  /// A regex string to apply to the volume snapshot list returned by DigitalOcean. This allows more advanced filtering not supported from the DigitalOcean API. This filtering is done locally on what DigitalOcean returns.
  final pulumi.Input<String>? nameRegex;

  /// A "slug" representing a DigitalOcean region (e.g. `nyc1`). If set, only volume snapshots available in the region will be returned.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVolumeSnapshotArgs].
  /// [mostRecent] If more than one result is returned, use the most recent volume snapshot.
  /// [name] The name of the volume snapshot.
  /// [nameRegex] A regex string to apply to the volume snapshot list returned by DigitalOcean. This allows more advanced filtering not supported from the DigitalOcean API. This filtering is done locally on what DigitalOcean returns.
  /// [region] A "slug" representing a DigitalOcean region (e.g. `nyc1`). If set, only volume snapshots available in the region will be returned.
  GetVolumeSnapshotArgs({
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
    };
  }

  factory GetVolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotArgs(
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
