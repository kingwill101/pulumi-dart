// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DropletSnapshot resources.
class DropletSnapshotState {
  /// The date and time the Droplet snapshot was created.
  final pulumi.Input<String>? createdAt;
  /// The ID of the Droplet from which the snapshot will be taken.
  final pulumi.Input<String>? dropletId;
  /// The minimum size in gigabytes required for a Droplet to be created based on this snapshot.
  final pulumi.Input<int>? minDiskSize;
  /// A name for the Droplet snapshot.
  final pulumi.Input<String>? name;
  /// A list of DigitalOcean region "slugs" indicating where the droplet snapshot is available.
  final pulumi.Input<List<String>>? regions;
  /// The billable size of the Droplet snapshot in gigabytes.
  final pulumi.Input<double>? size;

  /// Creates a new [DropletSnapshotState].
  /// [createdAt] The date and time the Droplet snapshot was created.
  /// [dropletId] The ID of the Droplet from which the snapshot will be taken.
  /// [minDiskSize] The minimum size in gigabytes required for a Droplet to be created based on this snapshot.
  /// [name] A name for the Droplet snapshot.
  /// [regions] A list of DigitalOcean region "slugs" indicating where the droplet snapshot is available.
  /// [size] The billable size of the Droplet snapshot in gigabytes.
  DropletSnapshotState({
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? dropletId,
    pulumi.Output<int>? minDiskSize,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? regions,
    pulumi.Output<double>? size,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dropletId = pulumi.Input.asOptionalInput<String>(dropletId),
      minDiskSize = pulumi.Input.asOptionalInput<int>(minDiskSize),
      name = pulumi.Input.asOptionalInput<String>(name),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      size = pulumi.Input.asOptionalInput<double>(size);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dropletId': ?dropletId,
      'minDiskSize': ?minDiskSize,
      'name': ?name,
      'regions': ?regions,
      'size': ?size,
    };
  }

  factory DropletSnapshotState.fromMap(Map<String, dynamic> map) {
    return DropletSnapshotState(
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<String>(map['dropletId'] as String),
      minDiskSize: map['minDiskSize'] == null ? null : pulumi.Output.create<int>(map['minDiskSize'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
    );
  }
}

