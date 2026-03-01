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
  /// > **Note:** The size can only be increased. If `create_source` is specified, then the size must be equal to or greater than the source's size.
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
    pulumi.Output<VolumeCreateSource>? createSource,
    pulumi.Output<String>? name,
    pulumi.Output<int>? sizeInGib,
    pulumi.Output<String>? targetIqn,
    pulumi.Output<String>? targetPortalHostname,
    pulumi.Output<int>? targetPortalPort,
    pulumi.Output<String>? volumeGroupId,
    pulumi.Output<String>? volumeId,
  }) :
      createSource = pulumi.Input.asOptionalInput<VolumeCreateSource>(createSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      sizeInGib = pulumi.Input.asOptionalInput<int>(sizeInGib),
      targetIqn = pulumi.Input.asOptionalInput<String>(targetIqn),
      targetPortalHostname = pulumi.Input.asOptionalInput<String>(targetPortalHostname),
      targetPortalPort = pulumi.Input.asOptionalInput<int>(targetPortalPort),
      volumeGroupId = pulumi.Input.asOptionalInput<String>(volumeGroupId),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId);

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
      createSource: map['createSource'] == null ? null : pulumi.Output.create<VolumeCreateSource>(VolumeCreateSource.fromMap((map['createSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sizeInGib: map['sizeInGib'] == null ? null : pulumi.Output.create<int>(map['sizeInGib'] as int),
      targetIqn: map['targetIqn'] == null ? null : pulumi.Output.create<String>(map['targetIqn'] as String),
      targetPortalHostname: map['targetPortalHostname'] == null ? null : pulumi.Output.create<String>(map['targetPortalHostname'] as String),
      targetPortalPort: map['targetPortalPort'] == null ? null : pulumi.Output.create<int>(map['targetPortalPort'] as int),
      volumeGroupId: map['volumeGroupId'] == null ? null : pulumi.Output.create<String>(map['volumeGroupId'] as String),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

