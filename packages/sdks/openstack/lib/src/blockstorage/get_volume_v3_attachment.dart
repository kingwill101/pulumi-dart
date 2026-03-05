// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeV3Attachment {
  final pulumi.Input<String> device;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceId;

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
      device: pulumi.Input.fromValue(map['device'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

