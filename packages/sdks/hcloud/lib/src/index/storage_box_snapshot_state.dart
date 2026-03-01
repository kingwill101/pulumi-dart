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
  StorageBoxSnapshotState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isAutomatic,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<int>? storageBoxId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      isAutomatic = pulumi.Input.asOptionalInput<bool>(isAutomatic),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageBoxId = pulumi.Input.asOptionalInput<int>(storageBoxId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isAutomatic: map['isAutomatic'] == null ? null : pulumi.Output.create<bool>(map['isAutomatic'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageBoxId: map['storageBoxId'] == null ? null : pulumi.Output.create<int>(map['storageBoxId'] as int),
    );
  }
}

