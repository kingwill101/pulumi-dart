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
    pulumi.Output<bool>? automount,
    pulumi.Output<int>? serverId,
    pulumi.Output<int>? volumeId,
  }) :
      automount = pulumi.Input.asOptionalInput<bool>(automount),
      serverId = pulumi.Input.asOptionalInput<int>(serverId),
      volumeId = pulumi.Input.asOptionalInput<int>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automount': ?automount,
      'serverId': ?serverId,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeAttachmentState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentState(
      automount: map['automount'] == null ? null : pulumi.Output.create<bool>(map['automount'] as bool),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<int>(map['volumeId'] as int),
    );
  }
}

