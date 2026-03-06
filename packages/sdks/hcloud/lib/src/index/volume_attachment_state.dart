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
  const VolumeAttachmentState({
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
      automount: (() { final guardedValue = map['automount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

