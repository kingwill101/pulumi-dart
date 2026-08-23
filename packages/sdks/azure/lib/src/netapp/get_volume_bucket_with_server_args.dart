// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_bucket_with_server_get_volume_bucket_with_server_args_doc}
/// Arguments for getVolumeBucketWithServer.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_bucket_with_server_get_volume_bucket_with_server_args_doc}
class GetVolumeBucketWithServerArgs {
  /// The name of the NetApp Volume Bucket.
  final pulumi.Input<String> name;
  /// The ARM ID of the parent NetApp Volume.
  final pulumi.Input<String> netappVolumeId;

  /// Creates a new [GetVolumeBucketWithServerArgs].
  /// [name] The name of the NetApp Volume Bucket.
  /// [netappVolumeId] The ARM ID of the parent NetApp Volume.
  const GetVolumeBucketWithServerArgs({
    required this.name,
    required this.netappVolumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'netappVolumeId': netappVolumeId,
    };
  }

  factory GetVolumeBucketWithServerArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketWithServerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      netappVolumeId: pulumi.Input.fromValue(map['netappVolumeId'] as String),
    );
  }
}
