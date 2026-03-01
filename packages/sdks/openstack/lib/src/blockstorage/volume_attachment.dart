// ignore_for_file: unused_element, unnecessary_cast


class VolumeAttachment {
  final String? device;
  final String? id;
  final String? instanceId;

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
      device: map['device'] == null ? null : map['device'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
    );
  }
}

