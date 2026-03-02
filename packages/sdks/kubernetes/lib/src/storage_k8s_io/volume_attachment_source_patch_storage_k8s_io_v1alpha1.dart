// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_spec_patch.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
class VolumeAttachmentSourcePatchStorageK8sIoV1alpha1 {
  /// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
  final pulumi.Input<PersistentVolumeSpecPatch>? inlineVolumeSpec;
  /// Name of the persistent volume to attach.
  final pulumi.Input<String>? persistentVolumeName;

  /// Creates a new [VolumeAttachmentSourcePatchStorageK8sIoV1alpha1].
  /// [inlineVolumeSpec] inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
  /// [persistentVolumeName] Name of the persistent volume to attach.
  VolumeAttachmentSourcePatchStorageK8sIoV1alpha1({
    this.inlineVolumeSpec,
    this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineVolumeSpec': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeSpecPatch, Map<String, dynamic>>(inlineVolumeSpec, (value) => value.toMap()),
      'persistentVolumeName': ?persistentVolumeName,
    };
  }

  factory VolumeAttachmentSourcePatchStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSourcePatchStorageK8sIoV1alpha1(
      inlineVolumeSpec: map['inlineVolumeSpec'] == null ? null : (PersistentVolumeSpecPatch.fromMap((map['inlineVolumeSpec'] as Map).cast<String, dynamic>())).input(),
      persistentVolumeName: map['persistentVolumeName'] == null ? null : (map['persistentVolumeName'] as String).input(),
    );
  }
}

