// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_spec.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
class VolumeAttachmentSourceStorageK8sIoV1alpha1 {
  /// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
  final pulumi.Input<PersistentVolumeSpec>? inlineVolumeSpec;
  /// Name of the persistent volume to attach.
  final pulumi.Input<String>? persistentVolumeName;

  /// Creates a new [VolumeAttachmentSourceStorageK8sIoV1alpha1].
  /// [inlineVolumeSpec] inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
  /// [persistentVolumeName] Name of the persistent volume to attach.
  const VolumeAttachmentSourceStorageK8sIoV1alpha1({
    this.inlineVolumeSpec,
    this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineVolumeSpec': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeSpec, Map<String, dynamic>>(inlineVolumeSpec, (value) => value.toMap()),
      'persistentVolumeName': ?persistentVolumeName,
    };
  }

  factory VolumeAttachmentSourceStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSourceStorageK8sIoV1alpha1(
      inlineVolumeSpec: (() { final guardedValue = map['inlineVolumeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistentVolumeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentVolumeName: (() { final guardedValue = map['persistentVolumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
