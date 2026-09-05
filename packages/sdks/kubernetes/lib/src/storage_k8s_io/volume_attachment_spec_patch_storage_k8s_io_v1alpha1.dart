// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_source_patch_storage_k8s_io_v1alpha1.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpecPatchStorageK8sIoV1alpha1 {
  /// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final pulumi.Input<String?>? attacher;
  /// The node that the volume should be attached to.
  final pulumi.Input<String?>? nodeName;
  /// Source represents the volume that should be attached.
  final pulumi.Input<VolumeAttachmentSourcePatchStorageK8sIoV1alpha1?>? source;

  /// Creates a new [VolumeAttachmentSpecPatchStorageK8sIoV1alpha1].
  /// [attacher] Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  /// [nodeName] The node that the volume should be attached to.
  /// [source] Source represents the volume that should be attached.
  const VolumeAttachmentSpecPatchStorageK8sIoV1alpha1({
    this.attacher,
    this.nodeName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attacher': ?attacher,
      'nodeName': ?nodeName,
      'source': ?pulumi.Input.mapOptionalInputValue<VolumeAttachmentSourcePatchStorageK8sIoV1alpha1, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentSpecPatchStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSpecPatchStorageK8sIoV1alpha1(
      attacher: (() { final guardedValue = map['attacher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeAttachmentSourcePatchStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
