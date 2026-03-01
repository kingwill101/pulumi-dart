// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// Description of the snapshot.
  final pulumi.Input<String>? description;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Server to the snapshot should be created from.
  final pulumi.Input<int>? serverId;

  /// Creates a new [SnapshotState].
  /// [description] Description of the snapshot.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [serverId] Server to the snapshot should be created from.
  SnapshotState({
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? serverId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      serverId = pulumi.Input.asOptionalInput<int>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'serverId': ?serverId,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
    );
  }
}

