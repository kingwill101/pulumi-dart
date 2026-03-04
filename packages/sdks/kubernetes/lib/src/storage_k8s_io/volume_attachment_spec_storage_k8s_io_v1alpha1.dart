// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_source_storage_k8s_io_v1alpha1.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpecStorageK8sIoV1alpha1 {
  /// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final pulumi.Input<String> attacher;

  /// The node that the volume should be attached to.
  final pulumi.Input<String> nodeName;

  /// Source represents the volume that should be attached.
  final pulumi.Input<VolumeAttachmentSourceStorageK8sIoV1alpha1> source;

  /// Creates a new [VolumeAttachmentSpecStorageK8sIoV1alpha1].
  /// [attacher] Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  /// [nodeName] The node that the volume should be attached to.
  /// [source] Source represents the volume that should be attached.
  VolumeAttachmentSpecStorageK8sIoV1alpha1({
    required this.attacher,
    required this.nodeName,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attacher': attacher,
      'nodeName': nodeName,
      'source':
          pulumi.Input.mapInputValue<
            VolumeAttachmentSourceStorageK8sIoV1alpha1,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentSpecStorageK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VolumeAttachmentSpecStorageK8sIoV1alpha1(
      attacher: pulumi.Input.fromValue(map['attacher'] as String),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      source: pulumi.Input.fromValue(
        VolumeAttachmentSourceStorageK8sIoV1alpha1.fromMap(
          (map['source']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
