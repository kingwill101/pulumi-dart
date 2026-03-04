// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBackingStorePermissions {
  /// Sets the group ownership for the backing store permissions of the volume.
  final pulumi.Input<String>? group;

  /// Configures the label associated with the backing store permissions.
  final pulumi.Input<String>? label;

  /// Specifies the mode (file permissions) for the backing store of the volume.
  final pulumi.Input<String>? mode;

  /// Defines the owner of the backing store permissions for the volume.
  final pulumi.Input<String>? owner;

  /// Creates a new [VolumeBackingStorePermissions].
  /// [group] Sets the group ownership for the backing store permissions of the volume.
  /// [label] Configures the label associated with the backing store permissions.
  /// [mode] Specifies the mode (file permissions) for the backing store of the volume.
  /// [owner] Defines the owner of the backing store permissions for the volume.
  VolumeBackingStorePermissions({
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

  factory VolumeBackingStorePermissions.fromMap(Map<String, dynamic> map) {
    return VolumeBackingStorePermissions(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
