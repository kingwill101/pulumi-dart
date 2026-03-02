// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_compatible_metadata.dart';

/// An AwsS3CompatibleData resource.
class AwsS3CompatibleData {
  /// Specifies the name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Specifies the endpoint of the storage service.
  final pulumi.Input<String> endpoint;
  /// Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String>? path;
  /// Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  final pulumi.Input<String>? region;
  /// A S3 compatible metadata.
  final pulumi.Input<S3CompatibleMetadata>? s3Metadata;

  /// Creates a new [AwsS3CompatibleData].
  /// [bucketName] Specifies the name of the bucket.
  /// [endpoint] Specifies the endpoint of the storage service.
  /// [path] Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  /// [region] Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  /// [s3Metadata] A S3 compatible metadata.
  AwsS3CompatibleData({
    required this.bucketName,
    required this.endpoint,
    this.path,
    this.region,
    this.s3Metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'endpoint': endpoint,
      'path': ?path,
      'region': ?region,
      's3Metadata': ?pulumi.Input.mapOptionalInputValue<S3CompatibleMetadata, Map<String, dynamic>>(s3Metadata, (value) => value.toMap()),
    };
  }

  factory AwsS3CompatibleData.fromMap(Map<String, dynamic> map) {
    return AwsS3CompatibleData(
      bucketName: (map['bucketName'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      s3Metadata: map['s3Metadata'] == null ? null : (S3CompatibleMetadata.fromMap((map['s3Metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

