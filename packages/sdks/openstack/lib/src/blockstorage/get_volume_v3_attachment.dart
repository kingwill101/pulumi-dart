// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeV3Attachment {
  final String device;
  final String id;
  final String instanceId;

  /// Creates a new [GetVolumeV3Attachment].
  /// [device] Required.
  /// [id] Required.
  /// [instanceId] Required.
  GetVolumeV3Attachment({
    required this.device,
    required this.id,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': device,
      'id': id,
      'instanceId': instanceId,
    };
  }

  factory GetVolumeV3Attachment.fromMap(Map<String, dynamic> map) {
    return GetVolumeV3Attachment(
      device: map['device'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

