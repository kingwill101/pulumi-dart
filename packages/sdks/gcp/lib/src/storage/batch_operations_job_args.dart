// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_bucket_list.dart';
import 'batch_operations_job_delete_object.dart';
import 'batch_operations_job_put_metadata.dart';
import 'batch_operations_job_put_object_hold.dart';
import 'batch_operations_job_rewrite_object.dart';

/// {@template pulumi_storage_batch_operations_job_batch_operations_job_args_doc}
/// The set of arguments for BatchOperationsJob.
/// {@endtemplate}
/// {@macro pulumi_storage_batch_operations_job_batch_operations_job_args_doc}
class BatchOperationsJobArgs {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketList>? bucketList;

  /// allows batch operations to delete objects in bucket
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobDeleteObject>? deleteObject;

  /// If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  final pulumi.Input<bool>? deleteProtection;

  /// The ID of the job.
  final pulumi.Input<String>? jobId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// allows batch operations to update metadata for objects in bucket
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobPutMetadata>? putMetadata;

  /// allows to update temporary hold or eventBased hold for objects in bucket.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobPutObjectHold>? putObjectHold;

  /// allows to update encryption key for objects in bucket.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobRewriteObject>? rewriteObject;

  /// Creates a new [BatchOperationsJobArgs].
  /// [bucketList] List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// [deleteObject] allows batch operations to delete objects in bucket
  /// [deleteProtection] If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  /// [jobId] The ID of the job.
  /// [project] The ID of the project in which the resource belongs.
  /// [putMetadata] allows batch operations to update metadata for objects in bucket
  /// [putObjectHold] allows to update temporary hold or eventBased hold for objects in bucket.
  /// [rewriteObject] allows to update encryption key for objects in bucket.
  BatchOperationsJobArgs({
    this.bucketList,
    this.deleteObject,
    this.deleteProtection,
    this.jobId,
    this.project,
    this.putMetadata,
    this.putObjectHold,
    this.rewriteObject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketList':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobBucketList,
            Map<String, dynamic>
          >(bucketList, (value) => value.toMap()),
      'deleteObject':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobDeleteObject,
            Map<String, dynamic>
          >(deleteObject, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'jobId': ?jobId,
      'project': ?project,
      'putMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobPutMetadata,
            Map<String, dynamic>
          >(putMetadata, (value) => value.toMap()),
      'putObjectHold':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobPutObjectHold,
            Map<String, dynamic>
          >(putObjectHold, (value) => value.toMap()),
      'rewriteObject':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobRewriteObject,
            Map<String, dynamic>
          >(rewriteObject, (value) => value.toMap()),
    };
  }

  factory BatchOperationsJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobArgs(
      bucketList: (() {
        final guardedValue = map['bucketList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobBucketList.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteObject: (() {
        final guardedValue = map['deleteObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobDeleteObject.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteProtection: (() {
        final guardedValue = map['deleteProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      jobId: (() {
        final guardedValue = map['jobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      putMetadata: (() {
        final guardedValue = map['putMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobPutMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      putObjectHold: (() {
        final guardedValue = map['putObjectHold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobPutObjectHold.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rewriteObject: (() {
        final guardedValue = map['rewriteObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobRewriteObject.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
