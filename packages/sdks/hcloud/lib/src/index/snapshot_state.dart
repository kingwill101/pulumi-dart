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
    this.description,
    this.labels,
    this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'serverId': ?serverId,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as int).input(),
    );
  }
}

