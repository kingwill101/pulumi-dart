// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_target_encryption.dart';
import 'pool_target_permissions.dart';
import 'pool_target_timestamps.dart';

class PoolTarget {
  /// Configures the encryption settings for the storage volume.
  final pulumi.Input<PoolTargetEncryption>? encryption;
  /// Defines the path in the host filesystem where the storage pool is mapped.
  final pulumi.Input<String>? path;
  /// Configures the permissions for the storage pool target.
  final pulumi.Input<PoolTargetPermissions>? permissions;
  /// Sets the timestamp attributes for the storage pool target.
  final pulumi.Input<PoolTargetTimestamps>? timestamps;

  /// Creates a new [PoolTarget].
  /// [encryption] Configures the encryption settings for the storage volume.
  /// [path] Defines the path in the host filesystem where the storage pool is mapped.
  /// [permissions] Configures the permissions for the storage pool target.
  /// [timestamps] Sets the timestamp attributes for the storage pool target.
  PoolTarget({
    this.encryption,
    this.path,
    this.permissions,
    this.timestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<PoolTargetEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'path': ?path,
      'permissions': ?pulumi.Input.mapOptionalInputValue<PoolTargetPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'timestamps': ?pulumi.Input.mapOptionalInputValue<PoolTargetTimestamps, Map<String, dynamic>>(timestamps, (value) => value.toMap()),
    };
  }

  factory PoolTarget.fromMap(Map<String, dynamic> map) {
    return PoolTarget(
      encryption: map['encryption'] == null ? null : (PoolTargetEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      permissions: map['permissions'] == null ? null : (PoolTargetPermissions.fromMap((map['permissions']! as Map).cast<String, dynamic>())).input(),
      timestamps: map['timestamps'] == null ? null : (PoolTargetTimestamps.fromMap((map['timestamps']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

