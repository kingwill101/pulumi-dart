// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_create_source.dart';

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// A `create_source` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VolumeCreateSource>? createSource;
  /// Specifies the name of this Elastic SAN Volume. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the size of the Elastic SAN Volume in GiB. The size should be within the remaining capacity of the parent Elastic SAN. Possible values are between `1` and `65536` (16 TiB).
  ///
  /// &gt; **Note:** The size can only be increased. If `create_source` is specified, then the size must be equal to or greater than the source's size.
  final pulumi.Input<int>? sizeInGib;
  /// The iSCSI Target IQN of the Elastic SAN Volume.
  final pulumi.Input<String>? targetIqn;
  /// The iSCSI Target Portal Host Name of the Elastic SAN Volume.
  final pulumi.Input<String>? targetPortalHostname;
  /// The iSCSI Target Portal Port of the Elastic SAN Volume.
  final pulumi.Input<int>? targetPortalPort;
  /// Specifies the Volume Group ID within which this Elastic SAN Volume should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? volumeGroupId;
  /// The UUID of the Elastic SAN Volume.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeState].
  /// [createSource] A `create_source` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Elastic SAN Volume. Changing this forces a new resource to be created.
  /// [sizeInGib] Specifies the size of the Elastic SAN Volume in GiB. The size should be within the remaining capacity of the parent Elastic SAN. Possible values are between `1` and `65536` (16 TiB).
  /// [targetIqn] The iSCSI Target IQN of the Elastic SAN Volume.
  /// [targetPortalHostname] The iSCSI Target Portal Host Name of the Elastic SAN Volume.
  /// [targetPortalPort] The iSCSI Target Portal Port of the Elastic SAN Volume.
  /// [volumeGroupId] Specifies the Volume Group ID within which this Elastic SAN Volume should exist. Changing this forces a new resource to be created.
  /// [volumeId] The UUID of the Elastic SAN Volume.
  VolumeState({
    this.createSource,
    this.name,
    this.sizeInGib,
    this.targetIqn,
    this.targetPortalHostname,
    this.targetPortalPort,
    this.volumeGroupId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createSource': ?pulumi.Input.mapOptionalInputValue<VolumeCreateSource, Map<String, dynamic>>(createSource, (value) => value.toMap()),
      'name': ?name,
      'sizeInGib': ?sizeInGib,
      'targetIqn': ?targetIqn,
      'targetPortalHostname': ?targetPortalHostname,
      'targetPortalPort': ?targetPortalPort,
      'volumeGroupId': ?volumeGroupId,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      createSource: (() { final guardedValue = map['createSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeCreateSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGib: (() { final guardedValue = map['sizeInGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetIqn: (() { final guardedValue = map['targetIqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPortalHostname: (() { final guardedValue = map['targetPortalHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPortalPort: (() { final guardedValue = map['targetPortalPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeGroupId: (() { final guardedValue = map['volumeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

