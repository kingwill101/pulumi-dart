// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_transfer_spec_aws_s3_compatible_data_source_s3_metadata.dart';

class TransferJobTransferSpecAwsS3CompatibleDataSource {
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Endpoint of the storage service.
  final pulumi.Input<String> endpoint;
  /// Specifies the path to transfer objects.
  final pulumi.Input<String>? path;
  /// Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  final pulumi.Input<String>? region;
  /// S3 compatible metadata.
  final pulumi.Input<TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata>? s3Metadata;

  /// Creates a new [TransferJobTransferSpecAwsS3CompatibleDataSource].
  /// [bucketName] Name of the bucket.
  /// [endpoint] Endpoint of the storage service.
  /// [path] Specifies the path to transfer objects.
  /// [region] Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  /// [s3Metadata] S3 compatible metadata.
  TransferJobTransferSpecAwsS3CompatibleDataSource({
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
      's3Metadata': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata, Map<String, dynamic>>(s3Metadata, (value) => value.toMap()),
    };
  }

  factory TransferJobTransferSpecAwsS3CompatibleDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3CompatibleDataSource(
      bucketName: (map['bucketName'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      s3Metadata: map['s3Metadata'] == null ? null : (TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata.fromMap((map['s3Metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

