// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_source.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpec {
  /// attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final pulumi.Input<String> attacher;
  /// nodeName represents the node that the volume should be attached to.
  final pulumi.Input<String> nodeName;
  /// source represents the volume that should be attached.
  final pulumi.Input<VolumeAttachmentSource> source;

  /// Creates a new [VolumeAttachmentSpec].
  /// [attacher] attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  /// [nodeName] nodeName represents the node that the volume should be attached to.
  /// [source] source represents the volume that should be attached.
  const VolumeAttachmentSpec({
    required this.attacher,
    required this.nodeName,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attacher': attacher,
      'nodeName': nodeName,
      'source': pulumi.Input.mapInputValue<VolumeAttachmentSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentSpec.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSpec(
      attacher: pulumi.Input.fromValue(map['attacher'] as String),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      source: pulumi.Input.fromValue(VolumeAttachmentSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
