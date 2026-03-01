// ignore_for_file: unused_element, unnecessary_cast

import 'volume_attachment_source_patch.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpecPatch {
  /// attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final String? attacher;
  /// nodeName represents the node that the volume should be attached to.
  final String? nodeName;
  /// source represents the volume that should be attached.
  final VolumeAttachmentSourcePatch? source;

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
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory VolumeAttachmentSpecPatch.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSpecPatch(
      attacher: map['attacher'] == null ? null : map['attacher'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      source: map['source'] == null ? null : VolumeAttachmentSourcePatch.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

