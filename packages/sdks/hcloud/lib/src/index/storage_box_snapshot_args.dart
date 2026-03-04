// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_storage_box_snapshot_storage_box_snapshot_args_doc}
/// The set of arguments for StorageBoxSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_storage_box_snapshot_storage_box_snapshot_args_doc}
class StorageBoxSnapshotArgs {
  /// Description of the Storage Box Snapshot.
  final pulumi.Input<String>? description;

  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;

  /// Creates a new [StorageBoxSnapshotArgs].
  /// [description] Description of the Storage Box Snapshot.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [storageBoxId] ID of the Storage Box.
  StorageBoxSnapshotArgs({
    this.description,
    this.labels,
    required this.storageBoxId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'storageBoxId': storageBoxId,
    };
  }

  factory StorageBoxSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return StorageBoxSnapshotArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      storageBoxId: pulumi.Input.fromValue(map['storageBoxId'] as int),
    );
  }
}
