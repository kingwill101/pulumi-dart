// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTargetPermissions {
  /// Sets the group ownership for the backing store permissions of the volume.
  final pulumi.Input<String>? group;
  /// Configures the label associated with the backing store permissions.
  final pulumi.Input<String>? label;
  /// Specifies the mode (file permissions) for the backing store of the volume.
  final pulumi.Input<String>? mode;
  /// Defines the owner of the backing store permissions for the volume.
  final pulumi.Input<String>? owner;

  /// Creates a new [VolumeTargetPermissions].
  /// [group] Sets the group ownership for the backing store permissions of the volume.
  /// [label] Configures the label associated with the backing store permissions.
  /// [mode] Specifies the mode (file permissions) for the backing store of the volume.
  /// [owner] Defines the owner of the backing store permissions for the volume.
  VolumeTargetPermissions({
    this.group,
    this.label,
    this.mode,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'label': ?label,
      'mode': ?mode,
      'owner': ?owner,
    };
  }

  factory VolumeTargetPermissions.fromMap(Map<String, dynamic> map) {
    return VolumeTargetPermissions(
      group: map['group'] == null ? null : (map['group']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
    );
  }
}

