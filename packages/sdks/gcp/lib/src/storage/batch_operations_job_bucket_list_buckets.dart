// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_bucket_list_buckets_manifest.dart';
import 'batch_operations_job_bucket_list_buckets_prefix_list.dart';

class BatchOperationsJobBucketListBuckets {
  /// Bucket name for the objects to be transformed.
  final pulumi.Input<String> bucket;
  /// contain the manifest source file that is a CSV file in a Google Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketListBucketsManifest>? manifest;
  /// Specifies objects matching a prefix set.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketListBucketsPrefixList>? prefixList;

  /// Creates a new [BatchOperationsJobBucketListBuckets].
  /// [bucket] Bucket name for the objects to be transformed.
  /// [manifest] contain the manifest source file that is a CSV file in a Google Cloud Storage bucket.
  /// [prefixList] Specifies objects matching a prefix set.
  BatchOperationsJobBucketListBuckets({
    required this.bucket,
    this.manifest,
    this.prefixList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'manifest': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobBucketListBucketsManifest, Map<String, dynamic>>(manifest, (value) => value.toMap()),
      'prefixList': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobBucketListBucketsPrefixList, Map<String, dynamic>>(prefixList, (value) => value.toMap()),
    };
  }

  factory BatchOperationsJobBucketListBuckets.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBuckets(
      bucket: (map['bucket'] as String).input(),
      manifest: map['manifest'] == null ? null : (BatchOperationsJobBucketListBucketsManifest.fromMap((map['manifest'] as Map).cast<String, dynamic>())).input(),
      prefixList: map['prefixList'] == null ? null : (BatchOperationsJobBucketListBucketsPrefixList.fromMap((map['prefixList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

