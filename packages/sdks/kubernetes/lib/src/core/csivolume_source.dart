// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// Represents a source location of a volume to mount, managed by an external CSI driver
class CSIVolumeSource {
  /// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  final pulumi.Input<String> driver;
  /// fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  final pulumi.Input<String>? fsType;
  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  final pulumi.Input<LocalObjectReference>? nodePublishSecretRef;
  /// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  final pulumi.Input<bool>? readOnly;
  /// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  final pulumi.Input<Map<String, String>>? volumeAttributes;

  /// Creates a new [CSIVolumeSource].
  /// [driver] driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  /// [fsType] fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  /// [nodePublishSecretRef] nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  /// [readOnly] readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  /// [volumeAttributes] volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  CSIVolumeSource({
    required this.driver,
    this.fsType,
    this.nodePublishSecretRef,
    this.readOnly,
    this.volumeAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': driver,
      'fsType': ?fsType,
      'nodePublishSecretRef': ?pulumi.Input.mapOptionalInputValue<LocalObjectReference, Map<String, dynamic>>(nodePublishSecretRef, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'volumeAttributes': ?volumeAttributes,
    };
  }

  factory CSIVolumeSource.fromMap(Map<String, dynamic> map) {
    return CSIVolumeSource(
      driver: (map['driver'] as String).input(),
      fsType: map['fsType'] == null ? null : (map['fsType']! as String).input(),
      nodePublishSecretRef: map['nodePublishSecretRef'] == null ? null : (LocalObjectReference.fromMap((map['nodePublishSecretRef']! as Map).cast<String, dynamic>())).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      volumeAttributes: map['volumeAttributes'] == null ? null : ((map['volumeAttributes']! as Map).cast<String, String>()).input(),
    );
  }
}

