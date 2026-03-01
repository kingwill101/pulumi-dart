// ignore_for_file: unused_element, unnecessary_cast

import 'secret_reference.dart';

/// ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
class ScaleIOPersistentVolumeSource {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
  final String? fsType;
  /// gateway is the host address of the ScaleIO API Gateway.
  final String gateway;
  /// protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  final String? protectionDomain;
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  final SecretReference secretRef;
  /// sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
  final bool? sslEnabled;
  /// storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  final String? storageMode;
  /// storagePool is the ScaleIO Storage Pool associated with the protection domain.
  final String? storagePool;
  /// system is the name of the storage system as configured in ScaleIO.
  final String system;
  /// volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  final String? volumeName;

  /// Creates a new [ScaleIOPersistentVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
  /// [gateway] gateway is the host address of the ScaleIO API Gateway.
  /// [protectionDomain] protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  /// [sslEnabled] sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
  /// [storageMode] storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  /// [storagePool] storagePool is the ScaleIO Storage Pool associated with the protection domain.
  /// [system] system is the name of the storage system as configured in ScaleIO.
  /// [volumeName] volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  ScaleIOPersistentVolumeSource({
    this.fsType,
    required this.gateway,
    this.protectionDomain,
    this.readOnly,
    required this.secretRef,
    this.sslEnabled,
    this.storageMode,
    this.storagePool,
    required this.system,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'gateway': gateway,
      'protectionDomain': ?protectionDomain,
      'readOnly': ?readOnly,
      'secretRef': secretRef.toMap(),
      'sslEnabled': ?sslEnabled,
      'storageMode': ?storageMode,
      'storagePool': ?storagePool,
      'system': system,
      'volumeName': ?volumeName,
    };
  }

  factory ScaleIOPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return ScaleIOPersistentVolumeSource(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      gateway: map['gateway'] as String,
      protectionDomain: map['protectionDomain'] == null ? null : map['protectionDomain'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretRef: SecretReference.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
      sslEnabled: map['sslEnabled'] == null ? null : map['sslEnabled'] as bool,
      storageMode: map['storageMode'] == null ? null : map['storageMode'] as String,
      storagePool: map['storagePool'] == null ? null : map['storagePool'] as String,
      system: map['system'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

