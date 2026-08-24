// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketSippySource {
  /// Name of the bucket on the provider (AWS, GCS only).
  final pulumi.Input<String> bucket;
  /// S3-compatible URL (Generic S3-compatible providers only).
  final pulumi.Input<String> bucketUrl;
  /// Name of the Azure Blob Storage container (Azure only).
  final pulumi.Input<String> container;
  /// Available values: "aws", "gcs", "s3", "azure".
  final pulumi.Input<String> r2BucketSippyProvider;
  /// Region where the bucket resides (AWS only).
  final pulumi.Input<String> region;

  /// Creates a new [GetR2BucketSippySource].
  /// [bucket] Name of the bucket on the provider (AWS, GCS only).
  /// [bucketUrl] S3-compatible URL (Generic S3-compatible providers only).
  /// [container] Name of the Azure Blob Storage container (Azure only).
  /// [r2BucketSippyProvider] Available values: "aws", "gcs", "s3", "azure".
  /// [region] Region where the bucket resides (AWS only).
  const GetR2BucketSippySource({
    required this.bucket,
    required this.bucketUrl,
    required this.container,
    required this.r2BucketSippyProvider,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketUrl': bucketUrl,
      'container': container,
      'r2BucketSippyProvider': r2BucketSippyProvider,
      'region': region,
    };
  }

  factory GetR2BucketSippySource.fromMap(Map<String, dynamic> map) {
    return GetR2BucketSippySource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketUrl: pulumi.Input.fromValue(map['bucketUrl'] as String),
      container: pulumi.Input.fromValue(map['container'] as String),
      r2BucketSippyProvider: pulumi.Input.fromValue(map['r2BucketSippyProvider'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
