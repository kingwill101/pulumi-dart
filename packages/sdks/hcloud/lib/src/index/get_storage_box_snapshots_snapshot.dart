// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_snapshots_snapshot_stats.dart';

class GetStorageBoxSnapshotsSnapshot {
  /// Description of the Storage Box Snapshot.
  final pulumi.Input<String> description;
  /// ID of the Storage Box Snapshot.
  final pulumi.Input<int> id;
  /// Whether the Storage Box Snapshot was created automatically.
  final pulumi.Input<bool> isAutomatic;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the Storage Box Snapshot.
  final pulumi.Input<String> name;
  /// Statistics of the Storage Box Snapshot.
  final pulumi.Input<GetStorageBoxSnapshotsSnapshotStats> stats;
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;

  /// Creates a new [GetStorageBoxSnapshotsSnapshot].
  /// [description] Description of the Storage Box Snapshot.
  /// [id] ID of the Storage Box Snapshot.
  /// [isAutomatic] Whether the Storage Box Snapshot was created automatically.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Snapshot.
  /// [stats] Statistics of the Storage Box Snapshot.
  /// [storageBoxId] ID of the Storage Box.
  GetStorageBoxSnapshotsSnapshot({
    required this.description,
    required this.id,
    required this.isAutomatic,
    required this.labels,
    required this.name,
    required this.stats,
    required this.storageBoxId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'isAutomatic': isAutomatic,
      'labels': labels,
      'name': name,
      'stats': pulumi.Input.mapInputValue<GetStorageBoxSnapshotsSnapshotStats, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'storageBoxId': storageBoxId,
    };
  }

  factory GetStorageBoxSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsSnapshot(
      description: (map['description'] as String).input(),
      id: (map['id'] as int).input(),
      isAutomatic: (map['isAutomatic'] as bool).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      stats: (GetStorageBoxSnapshotsSnapshotStats.fromMap((map['stats'] as Map).cast<String, dynamic>())).input(),
      storageBoxId: (map['storageBoxId'] as int).input(),
    );
  }
}

