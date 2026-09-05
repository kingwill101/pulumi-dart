// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_target_encryption.dart';
import 'volume_target_format.dart';
import 'volume_target_permissions.dart';
import 'volume_target_timestamps.dart';

class VolumeTarget {
  /// Configures the cluster size of the storage volume.
  final pulumi.Input<double?>? clusterSize;
  /// Specifies the units for the cluster size of the storage volume.
  final pulumi.Input<String?>? clusterSizeUnit;
  /// Sets compatibility settings for the storage volume target.
  final pulumi.Input<String?>? compat;
  /// Configures the encryption settings for the storage volume.
  final pulumi.Input<VolumeTargetEncryption?>? encryption;
  /// Enables specific features for the storage volume target.
  final pulumi.Input<List<Map<String, dynamic>>?>? features;
  /// Sets the format type for the backing store of the storage volume.
  final pulumi.Input<VolumeTargetFormat?>? format;
  /// Volume path on the host filesystem
  final pulumi.Input<String?>? path;
  /// Configures the permissions for the backing store of the storage volume.
  final pulumi.Input<VolumeTargetPermissions?>? permissions;
  /// Records the timestamp information for the storage volume target.
  final pulumi.Input<VolumeTargetTimestamps?>? timestamps;

  /// Creates a new [VolumeTarget].
  /// [clusterSize] Configures the cluster size of the storage volume.
  /// [clusterSizeUnit] Specifies the units for the cluster size of the storage volume.
  /// [compat] Sets compatibility settings for the storage volume target.
  /// [encryption] Configures the encryption settings for the storage volume.
  /// [features] Enables specific features for the storage volume target.
  /// [format] Sets the format type for the backing store of the storage volume.
  /// [path] Volume path on the host filesystem
  /// [permissions] Configures the permissions for the backing store of the storage volume.
  /// [timestamps] Records the timestamp information for the storage volume target.
  const VolumeTarget({
    this.clusterSize,
    this.clusterSizeUnit,
    this.compat,
    this.encryption,
    this.features,
    this.format,
    this.path,
    this.permissions,
    this.timestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'clusterSizeUnit': ?clusterSizeUnit,
      'compat': ?compat,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VolumeTargetEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'features': ?features,
      'format': ?pulumi.Input.mapOptionalInputValue<VolumeTargetFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'path': ?path,
      'permissions': ?pulumi.Input.mapOptionalInputValue<VolumeTargetPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'timestamps': ?pulumi.Input.mapOptionalInputValue<VolumeTargetTimestamps, Map<String, dynamic>>(timestamps, (value) => value.toMap()),
    };
  }

  factory VolumeTarget.fromMap(Map<String, dynamic> map) {
    return VolumeTarget(
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      clusterSizeUnit: (() { final guardedValue = map['clusterSizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compat: (() { final guardedValue = map['compat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTargetEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTargetFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTargetPermissions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestamps: (() { final guardedValue = map['timestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTargetTimestamps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
