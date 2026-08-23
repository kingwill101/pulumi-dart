// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_index_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// Description of the snapshot.
  final pulumi.Input<String>? description;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Server to the snapshot should be created from.
  final pulumi.Input<int> serverId;

  /// Creates a new [SnapshotArgs].
  /// [description] Description of the snapshot.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [serverId] Server to the snapshot should be created from.
  const SnapshotArgs({
    this.description,
    this.labels,
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'serverId': serverId,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as int),
    );
  }
}
