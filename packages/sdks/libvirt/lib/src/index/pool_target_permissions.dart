// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTargetPermissions {
  /// Sets the group ownership for the storage pool target permissions.
  final pulumi.Input<String>? group;
  /// Configures the label associated with the target permissions for the storage pool.
  final pulumi.Input<String>? label;
  /// Defines the mode (file permissions) for the storage pool target.
  final pulumi.Input<String>? mode;
  /// Specifies the owner of the permissions for the storage pool target.
  final pulumi.Input<String>? owner;

  /// Creates a new [PoolTargetPermissions].
  /// [group] Sets the group ownership for the storage pool target permissions.
  /// [label] Configures the label associated with the target permissions for the storage pool.
  /// [mode] Defines the mode (file permissions) for the storage pool target.
  /// [owner] Specifies the owner of the permissions for the storage pool target.
  const PoolTargetPermissions({
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

  factory PoolTargetPermissions.fromMap(Map<String, dynamic> map) {
    return PoolTargetPermissions(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
