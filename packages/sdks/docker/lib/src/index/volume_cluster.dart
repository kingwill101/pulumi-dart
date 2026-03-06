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
  const VolumeCluster({
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
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitBytes: (() { final guardedValue = map['limitBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredBytes: (() { final guardedValue = map['requiredBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharing: (() { final guardedValue = map['sharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topologyPreferred: (() { final guardedValue = map['topologyPreferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topologyRequired: (() { final guardedValue = map['topologyRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

