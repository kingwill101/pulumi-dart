// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_reference.dart';

/// Represents storage that is managed by an external CSI volume driver
class CSIPersistentVolumeSource {
  /// controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final pulumi.Input<SecretReference>? controllerExpandSecretRef;
  /// controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final pulumi.Input<SecretReference>? controllerPublishSecretRef;
  /// driver is the name of the driver to use for this volume. Required.
  final pulumi.Input<String> driver;
  /// fsType to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  final pulumi.Input<String>? fsType;
  /// nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final pulumi.Input<SecretReference>? nodeExpandSecretRef;
  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final pulumi.Input<SecretReference>? nodePublishSecretRef;
  /// nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final pulumi.Input<SecretReference>? nodeStageSecretRef;
  /// readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  final pulumi.Input<bool>? readOnly;
  /// volumeAttributes of the volume to publish.
  final pulumi.Input<Map<String, String>>? volumeAttributes;
  /// volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  final pulumi.Input<String> volumeHandle;

  /// Creates a new [CSIPersistentVolumeSource].
  /// [controllerExpandSecretRef] controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [controllerPublishSecretRef] controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [driver] driver is the name of the driver to use for this volume. Required.
  /// [fsType] fsType to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  /// [nodeExpandSecretRef] nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [nodePublishSecretRef] nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [nodeStageSecretRef] nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [readOnly] readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  /// [volumeAttributes] volumeAttributes of the volume to publish.
  /// [volumeHandle] volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  CSIPersistentVolumeSource({
    this.controllerExpandSecretRef,
    this.controllerPublishSecretRef,
    required this.driver,
    this.fsType,
    this.nodeExpandSecretRef,
    this.nodePublishSecretRef,
    this.nodeStageSecretRef,
    this.readOnly,
    this.volumeAttributes,
    required this.volumeHandle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerExpandSecretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(controllerExpandSecretRef, (value) => value.toMap()),
      'controllerPublishSecretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(controllerPublishSecretRef, (value) => value.toMap()),
      'driver': driver,
      'fsType': ?fsType,
      'nodeExpandSecretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(nodeExpandSecretRef, (value) => value.toMap()),
      'nodePublishSecretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(nodePublishSecretRef, (value) => value.toMap()),
      'nodeStageSecretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(nodeStageSecretRef, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'volumeAttributes': ?volumeAttributes,
      'volumeHandle': volumeHandle,
    };
  }

  factory CSIPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return CSIPersistentVolumeSource(
      controllerExpandSecretRef: map['controllerExpandSecretRef'] == null ? null : (SecretReference.fromMap((map['controllerExpandSecretRef'] as Map).cast<String, dynamic>())).input(),
      controllerPublishSecretRef: map['controllerPublishSecretRef'] == null ? null : (SecretReference.fromMap((map['controllerPublishSecretRef'] as Map).cast<String, dynamic>())).input(),
      driver: (map['driver'] as String).input(),
      fsType: map['fsType'] == null ? null : (map['fsType'] as String).input(),
      nodeExpandSecretRef: map['nodeExpandSecretRef'] == null ? null : (SecretReference.fromMap((map['nodeExpandSecretRef'] as Map).cast<String, dynamic>())).input(),
      nodePublishSecretRef: map['nodePublishSecretRef'] == null ? null : (SecretReference.fromMap((map['nodePublishSecretRef'] as Map).cast<String, dynamic>())).input(),
      nodeStageSecretRef: map['nodeStageSecretRef'] == null ? null : (SecretReference.fromMap((map['nodeStageSecretRef'] as Map).cast<String, dynamic>())).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      volumeAttributes: map['volumeAttributes'] == null ? null : ((map['volumeAttributes'] as Map).cast<String, String>()).input(),
      volumeHandle: (map['volumeHandle'] as String).input(),
    );
  }
}

