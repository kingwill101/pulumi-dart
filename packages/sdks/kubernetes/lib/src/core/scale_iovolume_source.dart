// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// ScaleIOVolumeSource represents a persistent ScaleIO volume
class ScaleIOVolumeSource {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
  final pulumi.Input<String>? fsType;
  /// gateway is the host address of the ScaleIO API Gateway.
  final pulumi.Input<String> gateway;
  /// protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  final pulumi.Input<String>? protectionDomain;
  /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  final pulumi.Input<LocalObjectReference> secretRef;
  /// sslEnabled Flag enable/disable SSL communication with Gateway, default false
  final pulumi.Input<bool>? sslEnabled;
  /// storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  final pulumi.Input<String>? storageMode;
  /// storagePool is the ScaleIO Storage Pool associated with the protection domain.
  final pulumi.Input<String>? storagePool;
  /// system is the name of the storage system as configured in ScaleIO.
  final pulumi.Input<String> system;
  /// volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [ScaleIOVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
  /// [gateway] gateway is the host address of the ScaleIO API Gateway.
  /// [protectionDomain] protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  /// [readOnly] readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  /// [sslEnabled] sslEnabled Flag enable/disable SSL communication with Gateway, default false
  /// [storageMode] storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  /// [storagePool] storagePool is the ScaleIO Storage Pool associated with the protection domain.
  /// [system] system is the name of the storage system as configured in ScaleIO.
  /// [volumeName] volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  ScaleIOVolumeSource({
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
      'secretRef': pulumi.Input.mapInputValue<LocalObjectReference, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'sslEnabled': ?sslEnabled,
      'storageMode': ?storageMode,
      'storagePool': ?storagePool,
      'system': system,
      'volumeName': ?volumeName,
    };
  }

  factory ScaleIOVolumeSource.fromMap(Map<String, dynamic> map) {
    return ScaleIOVolumeSource(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      protectionDomain: (() { final guardedValue = map['protectionDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRef: pulumi.Input.fromValue(LocalObjectReference.fromMap((map['secretRef']! as Map).cast<String, dynamic>())),
      sslEnabled: (() { final guardedValue = map['sslEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageMode: (() { final guardedValue = map['storageMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      system: pulumi.Input.fromValue(map['system'] as String),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

