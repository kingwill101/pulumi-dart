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
  const GetStorageBoxSnapshotsSnapshot({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      isAutomatic: pulumi.Input.fromValue(map['isAutomatic'] as bool),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      stats: pulumi.Input.fromValue(GetStorageBoxSnapshotsSnapshotStats.fromMap((map['stats']! as Map).cast<String, dynamic>())),
      storageBoxId: pulumi.Input.fromValue(map['storageBoxId'] as int),
    );
  }
}

