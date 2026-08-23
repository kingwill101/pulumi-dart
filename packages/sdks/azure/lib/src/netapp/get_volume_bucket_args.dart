// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_bucket_get_volume_bucket_args_doc}
/// Arguments for getVolumeBucket.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_bucket_get_volume_bucket_args_doc}
class GetVolumeBucketArgs {
  /// The name of the NetApp Volume Bucket.
  final pulumi.Input<String> name;
  /// The ARM ID of the parent NetApp Volume.
  final pulumi.Input<String> netappVolumeId;

  /// Creates a new [GetVolumeBucketArgs].
  /// [name] The name of the NetApp Volume Bucket.
  /// [netappVolumeId] The ARM ID of the parent NetApp Volume.
  const GetVolumeBucketArgs({
    required this.name,
    required this.netappVolumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'netappVolumeId': netappVolumeId,
    };
  }

  factory GetVolumeBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      netappVolumeId: pulumi.Input.fromValue(map['netappVolumeId'] as String),
    );
  }
}
