// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_bucket_list_buckets.dart';

class BatchOperationsJobBucketList {
  /// List of buckets and their objects to be transformed.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketListBuckets> buckets;

  /// Creates a new [BatchOperationsJobBucketList].
  /// [buckets] List of buckets and their objects to be transformed.
  const BatchOperationsJobBucketList({
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': pulumi.Input.mapInputValue<BatchOperationsJobBucketListBuckets, Map<String, dynamic>>(buckets, (value) => value.toMap()),
    };
  }

  factory BatchOperationsJobBucketList.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketList(
      buckets: pulumi.Input.fromValue(BatchOperationsJobBucketListBuckets.fromMap((map['buckets']! as Map).cast<String, dynamic>())),
    );
  }
}

