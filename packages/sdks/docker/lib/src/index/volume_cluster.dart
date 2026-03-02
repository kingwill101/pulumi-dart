// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeCluster {
  /// Availability of the volume. Can be `active` (default), `pause`, or `drain`.
  final pulumi.Input<String>? availability;
  /// Cluster Volume group
  final pulumi.Input<String>? group;
  /// The ID of the cluster volume.
  final pulumi.Input<String>? id;
  /// Minimum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  final pulumi.Input<String>? limitBytes;
  /// Maximum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  final pulumi.Input<String>? requiredBytes;
  /// The scope of the volume. Can be `single` (default) or `multi`.
  final pulumi.Input<String>? scope;
  /// The sharing mode. Can be `none` (default), `readonly`, `onewriter` or `all`.
  final pulumi.Input<String>? sharing;
  /// A topology that the Cluster Volume would be preferred in
  final pulumi.Input<String>? topologyPreferred;
  /// A topology that the Cluster Volume must be accessible from
  final pulumi.Input<String>? topologyRequired;
  /// Cluster Volume access type. Can be `mount` or `block` (default).
  final pulumi.Input<String>? type;

  /// Creates a new [VolumeCluster].
  /// [availability] Availability of the volume. Can be `active` (default), `pause`, or `drain`.
  /// [group] Cluster Volume group
  /// [id] The ID of the cluster volume.
  /// [limitBytes] Minimum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  /// [requiredBytes] Maximum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  /// [scope] The scope of the volume. Can be `single` (default) or `multi`.
  /// [sharing] The sharing mode. Can be `none` (default), `readonly`, `onewriter` or `all`.
  /// [topologyPreferred] A topology that the Cluster Volume would be preferred in
  /// [topologyRequired] A topology that the Cluster Volume must be accessible from
  /// [type] Cluster Volume access type. Can be `mount` or `block` (default).
  VolumeCluster({
    this.availability,
    this.group,
    this.id,
    this.limitBytes,
    this.requiredBytes,
    this.scope,
    this.sharing,
    this.topologyPreferred,
    this.topologyRequired,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?availability,
      'group': ?group,
      'id': ?id,
      'limitBytes': ?limitBytes,
      'requiredBytes': ?requiredBytes,
      'scope': ?scope,
      'sharing': ?sharing,
      'topologyPreferred': ?topologyPreferred,
      'topologyRequired': ?topologyRequired,
      'type': ?type,
    };
  }

  factory VolumeCluster.fromMap(Map<String, dynamic> map) {
    return VolumeCluster(
      availability: map['availability'] == null ? null : (map['availability']! as String).input(),
      group: map['group'] == null ? null : (map['group']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      limitBytes: map['limitBytes'] == null ? null : (map['limitBytes']! as String).input(),
      requiredBytes: map['requiredBytes'] == null ? null : (map['requiredBytes']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      sharing: map['sharing'] == null ? null : (map['sharing']! as String).input(),
      topologyPreferred: map['topologyPreferred'] == null ? null : (map['topologyPreferred']! as String).input(),
      topologyRequired: map['topologyRequired'] == null ? null : (map['topologyRequired']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

