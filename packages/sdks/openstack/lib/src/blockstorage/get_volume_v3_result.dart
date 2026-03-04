// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_v3_attachment.dart';

/// Result data returned by getVolumeV3.
class GetVolumeV3Result {
  /// If a volume is attached to an instance, this attribute will
  /// display the Attachment ID, Instance ID, and the Device as the Instance
  /// sees it.
  final List<GetVolumeV3Attachment> attachments;

  /// Indicates if the volume is bootable.
  final String bootable;

  /// The OpenStack host on which the volume is located.
  final String host;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final Map<String, String> metadata;

  /// See Argument Reference above.
  final String name;

  /// See Argument Reference above.
  final String region;

  /// The size of the volume in GBs.
  final int size;

  /// The ID of the volume from which the current volume was created.
  final String sourceVolumeId;

  /// See Argument Reference above.
  final String status;

  /// The type of the volume.
  final String volumeType;

  /// Creates a new [GetVolumeV3Result].
  /// [attachments] If a volume is attached to an instance, this attribute will
  /// [bootable] Indicates if the volume is bootable.
  /// [host] The OpenStack host on which the volume is located.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [size] The size of the volume in GBs.
  /// [sourceVolumeId] The ID of the volume from which the current volume was created.
  /// [status] See Argument Reference above.
  /// [volumeType] The type of the volume.
  GetVolumeV3Result({
    required this.attachments,
    required this.bootable,
    required this.host,
    required this.id,
    required this.metadata,
    required this.name,
    required this.region,
    required this.size,
    required this.sourceVolumeId,
    required this.status,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments':
          pulumi.Input.encodeList<GetVolumeV3Attachment, Map<String, dynamic>>(
            attachments,
            (value) => value.toMap(),
          ),
      'bootable': bootable,
      'host': host,
      'id': id,
      'metadata': metadata,
      'name': name,
      'region': region,
      'size': size,
      'sourceVolumeId': sourceVolumeId,
      'status': status,
      'volumeType': volumeType,
    };
  }

  factory GetVolumeV3Result.fromMap(Map<String, dynamic> map) {
    return GetVolumeV3Result(
      attachments: pulumi.Input.decodeList<GetVolumeV3Attachment>(
        map['attachments']!,
        (value) => GetVolumeV3Attachment.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      bootable: map['bootable'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      sourceVolumeId: map['sourceVolumeId'] as String,
      status: map['status'] as String,
      volumeType: map['volumeType'] as String,
    );
  }
}
