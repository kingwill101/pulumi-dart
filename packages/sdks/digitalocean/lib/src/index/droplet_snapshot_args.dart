// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_droplet_snapshot_droplet_snapshot_args_doc}
/// The set of arguments for DropletSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_droplet_snapshot_droplet_snapshot_args_doc}
class DropletSnapshotArgs {
  /// The ID of the Droplet from which the snapshot will be taken.
  final pulumi.Input<String> dropletId;
  /// A name for the Droplet snapshot.
  final pulumi.Input<String>? name;

  /// Creates a new [DropletSnapshotArgs].
  /// [dropletId] The ID of the Droplet from which the snapshot will be taken.
  /// [name] A name for the Droplet snapshot.
  DropletSnapshotArgs({
    required this.dropletId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'name': ?name,
    };
  }

  factory DropletSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return DropletSnapshotArgs(
      dropletId: (map['dropletId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

