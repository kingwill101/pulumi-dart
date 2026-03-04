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
  VolumeAttachment({this.device, this.id, this.instanceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'id': ?id,
      'instanceId': ?instanceId,
    };
  }

  factory VolumeAttachment.fromMap(Map<String, dynamic> map) {
    return VolumeAttachment(
      device: (() {
        final guardedValue = map['device'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
