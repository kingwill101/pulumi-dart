// ignore_for_file: unused_element, unnecessary_cast

import 'get_storage_box_snapshot_stats.dart';

/// Result data returned by getStorageBoxSnapshot.
class GetStorageBoxSnapshotResult {
  /// Description of the Storage Box Snapshot.
  final String? description;
  /// ID of the Storage Box Snapshot.
  final int? id;
  /// Whether the Storage Box Snapshot was created automatically.
  final bool? isAutomatic;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Name of the Storage Box Snapshot.
  final String? name;
  /// Statistics of the Storage Box Snapshot.
  final GetStorageBoxSnapshotStats? stats;
  /// ID of the Storage Box.
  final int? storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final String? withSelector;

  /// Creates a new [GetStorageBoxSnapshotResult].
  /// [description] Description of the Storage Box Snapshot.
  /// [id] ID of the Storage Box Snapshot.
  /// [isAutomatic] Whether the Storage Box Snapshot was created automatically.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Snapshot.
  /// [stats] Statistics of the Storage Box Snapshot.
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  const GetStorageBoxSnapshotResult({
    this.description,
    this.id,
    this.isAutomatic,
    this.labels,
    this.name,
    this.stats,
    this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'isAutomatic': ?isAutomatic,
      'labels': ?labels,
      'name': ?name,
      'stats': ?stats?.toMap(),
      'storageBoxId': ?storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      isAutomatic: (() { final guardedValue = map['isAutomatic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return GetStorageBoxSnapshotStats.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
