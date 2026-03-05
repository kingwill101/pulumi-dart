// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NfsSnapshot resources.
class NfsSnapshotState {
  /// The date and time when the snapshot was created.
  final pulumi.Input<String>? createdAt;
  /// A name for the NFS snapshot. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters.
  final pulumi.Input<String>? name;
  /// The region where the NFS snapshot will be created.
  final pulumi.Input<String>? region;
  /// The ID of the NFS share to snapshot.
  final pulumi.Input<String>? shareId;
  /// The size of the snapshot in GiB.
  final pulumi.Input<int>? size;
  final pulumi.Input<String>? status;

  /// Creates a new [NfsSnapshotState].
  /// [createdAt] The date and time when the snapshot was created.
  /// [name] A name for the NFS snapshot. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters.
  /// [region] The region where the NFS snapshot will be created.
  /// [shareId] The ID of the NFS share to snapshot.
  /// [size] The size of the snapshot in GiB.
  /// [status] Optional.
  NfsSnapshotState({
    this.createdAt,
    this.name,
    this.region,
    this.shareId,
    this.size,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'name': ?name,
      'region': ?region,
      'shareId': ?shareId,
      'size': ?size,
      'status': ?status,
    };
  }

  factory NfsSnapshotState.fromMap(Map<String, dynamic> map) {
    return NfsSnapshotState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

