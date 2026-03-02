// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_source_patch.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpecPatch {
  /// attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final pulumi.Input<String>? attacher;
  /// nodeName represents the node that the volume should be attached to.
  final pulumi.Input<String>? nodeName;
  /// source represents the volume that should be attached.
  final pulumi.Input<VolumeAttachmentSourcePatch>? source;

  /// Creates a new [VolumeAttachmentSpecPatch].
  /// [attacher] attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  /// [nodeName] nodeName represents the node that the volume should be attached to.
  /// [source] source represents the volume that should be attached.
  VolumeAttachmentSpecPatch({
    this.attacher,
    this.nodeName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attacher': ?attacher,
      'nodeName': ?nodeName,
      'source': ?pulumi.Input.mapOptionalInputValue<VolumeAttachmentSourcePatch, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentSpecPatch.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSpecPatch(
      attacher: map['attacher'] == null ? null : (map['attacher']! as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName']! as String).input(),
      source: map['source'] == null ? null : (VolumeAttachmentSourcePatch.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

