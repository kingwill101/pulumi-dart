// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_attachment_volume_attachment_args_doc}
/// The set of arguments for VolumeAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_volume_attachment_volume_attachment_args_doc}
class VolumeAttachmentArgs {
  /// Automount the volume upon attaching it.
  final pulumi.Input<bool?>? automount;
  /// Server to attach the Volume to.
  final pulumi.Input<int> serverId;
  /// ID of the Volume.
  final pulumi.Input<int> volumeId;

  /// Creates a new [VolumeAttachmentArgs].
  /// [automount] Automount the volume upon attaching it.
  /// [serverId] Server to attach the Volume to.
  /// [volumeId] ID of the Volume.
  const VolumeAttachmentArgs({
    this.automount,
    required this.serverId,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automount': ?automount,
      'serverId': serverId,
      'volumeId': volumeId,
    };
  }

  factory VolumeAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentArgs(
      automount: (() { final guardedValue = map['automount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['serverId'])),
      volumeId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['volumeId'])),
    );
  }
}
