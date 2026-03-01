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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareId,
    pulumi.Output<int>? size,
    pulumi.Output<String>? status,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      size = pulumi.Input.asOptionalInput<int>(size),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

