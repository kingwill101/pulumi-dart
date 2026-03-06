// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_get_snapshot_v3_get_snapshot_v3_args_doc}
/// Arguments for getSnapshotV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_get_snapshot_v3_get_snapshot_v3_args_doc}
class GetSnapshotV3Args {
  /// Pick the most recently created snapshot if there
  /// are multiple results.
  final pulumi.Input<bool>? mostRecent;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Block Storage
  /// client. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The status of the snapshot.
  final pulumi.Input<String>? status;
  /// The ID of the snapshot's volume.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [GetSnapshotV3Args].
  /// [mostRecent] Pick the most recently created snapshot if there
  /// [name] The name of the snapshot.
  /// [region] The region in which to obtain the V3 Block Storage
  /// [status] The status of the snapshot.
  /// [volumeId] The ID of the snapshot's volume.
  const GetSnapshotV3Args({
    this.mostRecent,
    this.name,
    this.region,
    this.status,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'volumeId': ?volumeId,
    };
  }

  factory GetSnapshotV3Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotV3Args(
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

