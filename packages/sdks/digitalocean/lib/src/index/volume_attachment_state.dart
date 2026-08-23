// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeAttachment resources.
class VolumeAttachmentState {
  /// ID of the Droplet to attach the volume to.
  final pulumi.Input<int>? dropletId;
  /// ID of the Volume to be attached to the Droplet.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeAttachmentState].
  /// [dropletId] ID of the Droplet to attach the volume to.
  /// [volumeId] ID of the Volume to be attached to the Droplet.
  const VolumeAttachmentState({
    this.dropletId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeAttachmentState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentState(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
