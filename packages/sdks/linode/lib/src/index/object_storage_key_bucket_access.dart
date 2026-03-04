// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectStorageKeyBucketAccess {
  /// The unique label of the bucket to which the key will grant limited access.
  final pulumi.Input<String> bucketName;

  /// The Object Storage cluster where the bucket resides. Deprecated in favor of `region`.
  final pulumi.Input<String>? cluster;

  /// This Limited Access Key’s permissions for the selected bucket. *Changing `permissions` forces the creation of a new Object Storage Key.* (`read_write`, `read_only`)
  final pulumi.Input<String> permissions;

  /// The region where the bucket resides.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectStorageKeyBucketAccess].
  /// [bucketName] The unique label of the bucket to which the key will grant limited access.
  /// [cluster] The Object Storage cluster where the bucket resides. Deprecated in favor of `region`.
  /// [permissions] This Limited Access Key’s permissions for the selected bucket. *Changing `permissions` forces the creation of a new Object Storage Key.* (`read_write`, `read_only`)
  /// [region] The region where the bucket resides.
  ObjectStorageKeyBucketAccess({
    required this.bucketName,
    this.cluster,
    required this.permissions,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'cluster': ?cluster,
      'permissions': permissions,
      'region': ?region,
    };
  }

  factory ObjectStorageKeyBucketAccess.fromMap(Map<String, dynamic> map) {
    return ObjectStorageKeyBucketAccess(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
