// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_spec.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistentVolumes can be attached via external attacher, in the future we may allow also inline volumes in pods. Exactly one member can be set.
class VolumeAttachmentSource {
  /// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is beta-level and is only honored by servers that enabled the CSIMigration feature.
  final pulumi.Input<PersistentVolumeSpec>? inlineVolumeSpec;
  /// persistentVolumeName represents the name of the persistent volume to attach.
  final pulumi.Input<String>? persistentVolumeName;

  /// Creates a new [VolumeAttachmentSource].
  /// [inlineVolumeSpec] inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is beta-level and is only honored by servers that enabled the CSIMigration feature.
  /// [persistentVolumeName] persistentVolumeName represents the name of the persistent volume to attach.
  VolumeAttachmentSource({
    this.inlineVolumeSpec,
    this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineVolumeSpec': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeSpec, Map<String, dynamic>>(inlineVolumeSpec, (value) => value.toMap()),
      'persistentVolumeName': ?persistentVolumeName,
    };
  }

  factory VolumeAttachmentSource.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSource(
      inlineVolumeSpec: map['inlineVolumeSpec'] == null ? null : (PersistentVolumeSpec.fromMap((map['inlineVolumeSpec']! as Map).cast<String, dynamic>())).input(),
      persistentVolumeName: map['persistentVolumeName'] == null ? null : (map['persistentVolumeName']! as String).input(),
    );
  }
}

