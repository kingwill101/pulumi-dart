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
  const DropletSnapshotState({
    this.createdAt,
    this.dropletId,
    this.minDiskSize,
    this.name,
    this.regions,
    this.size,
  });

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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minDiskSize: (() { final guardedValue = map['minDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
