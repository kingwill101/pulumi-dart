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
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<int> storageBoxId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      storageBoxId = pulumi.Input.asInput<int>(storageBoxId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'storageBoxId': storageBoxId,
    };
  }

  factory StorageBoxSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return StorageBoxSnapshotArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      storageBoxId: pulumi.Output.create<int>(map['storageBoxId'] as int),
    );
  }
}

