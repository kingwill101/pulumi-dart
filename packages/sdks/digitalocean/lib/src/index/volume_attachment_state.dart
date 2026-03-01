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
  VolumeAttachmentState({
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? volumeId,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeAttachmentState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentState(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

