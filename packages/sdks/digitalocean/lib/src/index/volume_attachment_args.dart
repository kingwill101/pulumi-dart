// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_attachment_volume_attachment_args_doc}
/// The set of arguments for VolumeAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_volume_attachment_volume_attachment_args_doc}
class VolumeAttachmentArgs {
  /// ID of the Droplet to attach the volume to.
  final pulumi.Input<int> dropletId;
  /// ID of the Volume to be attached to the Droplet.
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeAttachmentArgs].
  /// [dropletId] ID of the Droplet to attach the volume to.
  /// [volumeId] ID of the Volume to be attached to the Droplet.
  const VolumeAttachmentArgs({
    required this.dropletId,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'volumeId': volumeId,
    };
  }

  factory VolumeAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentArgs(
      dropletId: pulumi.Input.fromValue(map['dropletId'] as int),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
