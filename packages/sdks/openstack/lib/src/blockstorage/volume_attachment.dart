// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeAttachment {
  final pulumi.Input<String>? device;
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? instanceId;

  /// Creates a new [VolumeAttachment].
  /// [device] Optional.
  /// [id] Optional.
  /// [instanceId] Optional.
  VolumeAttachment({
    this.device,
    this.id,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'id': ?id,
      'instanceId': ?instanceId,
    };
  }

  factory VolumeAttachment.fromMap(Map<String, dynamic> map) {
    return VolumeAttachment(
      device: map['device'] == null ? null : (map['device'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
    );
  }
}

