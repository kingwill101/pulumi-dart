// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_patch.dart';

/// Represents a source location of a volume to mount, managed by an external CSI driver
class CSIVolumeSourcePatch {
  /// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  final String? driver;
  /// fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  final String? fsType;
  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  final LocalObjectReferencePatch? nodePublishSecretRef;
  /// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  final bool? readOnly;
  /// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  final Map<String, String>? volumeAttributes;

  /// Creates a new [CSIVolumeSourcePatch].
  /// [driver] driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  /// [fsType] fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  /// [nodePublishSecretRef] nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  /// [readOnly] readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  /// [volumeAttributes] volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  CSIVolumeSourcePatch({
    this.driver,
    this.fsType,
    this.nodePublishSecretRef,
    this.readOnly,
    this.volumeAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'fsType': ?fsType,
      'nodePublishSecretRef': ?nodePublishSecretRef == null ? null : nodePublishSecretRef!.toMap(),
      'readOnly': ?readOnly,
      'volumeAttributes': ?volumeAttributes,
    };
  }

  factory CSIVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return CSIVolumeSourcePatch(
      driver: map['driver'] == null ? null : map['driver'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      nodePublishSecretRef: map['nodePublishSecretRef'] == null ? null : LocalObjectReferencePatch.fromMap((map['nodePublishSecretRef'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      volumeAttributes: map['volumeAttributes'] == null ? null : (map['volumeAttributes'] as Map).cast<String, String>(),
    );
  }
}

