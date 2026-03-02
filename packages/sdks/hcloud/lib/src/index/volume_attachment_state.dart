// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeAttachment resources.
class VolumeAttachmentState {
  /// Automount the volume upon attaching it.
  final pulumi.Input<bool>? automount;
  /// Server to attach the Volume to.
  final pulumi.Input<int>? serverId;
  /// ID of the Volume.
  final pulumi.Input<int>? volumeId;

  /// Creates a new [VolumeAttachmentState].
  /// [automount] Automount the volume upon attaching it.
  /// [serverId] Server to attach the Volume to.
  /// [volumeId] ID of the Volume.
  VolumeAttachmentState({
    this.automount,
    this.serverId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automount': ?automount,
      'serverId': ?serverId,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeAttachmentState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentState(
      automount: map['automount'] == null ? null : (map['automount']! as bool).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as int).input(),
    );
  }
}

