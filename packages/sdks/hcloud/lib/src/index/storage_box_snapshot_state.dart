// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageBoxSnapshot resources.
class StorageBoxSnapshotState {
  /// Description of the Storage Box Snapshot.
  final pulumi.Input<String>? description;
  /// Whether the Storage Box Snapshot was created automatically.
  final pulumi.Input<bool>? isAutomatic;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Storage Box Snapshot.
  final pulumi.Input<String>? name;
  /// ID of the Storage Box.
  final pulumi.Input<int>? storageBoxId;

  /// Creates a new [StorageBoxSnapshotState].
  /// [description] Description of the Storage Box Snapshot.
  /// [isAutomatic] Whether the Storage Box Snapshot was created automatically.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Snapshot.
  /// [storageBoxId] ID of the Storage Box.
  const StorageBoxSnapshotState({
    this.description,
    this.isAutomatic,
    this.labels,
    this.name,
    this.storageBoxId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isAutomatic': ?isAutomatic,
      'labels': ?labels,
      'name': ?name,
      'storageBoxId': ?storageBoxId,
    };
  }

  factory StorageBoxSnapshotState.fromMap(Map<String, dynamic> map) {
    return StorageBoxSnapshotState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAutomatic: (() { final guardedValue = map['isAutomatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
