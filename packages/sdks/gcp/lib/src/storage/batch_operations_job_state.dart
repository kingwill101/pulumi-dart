// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_bucket_list.dart';
import 'batch_operations_job_delete_object.dart';
import 'batch_operations_job_put_metadata.dart';
import 'batch_operations_job_put_object_hold.dart';
import 'batch_operations_job_rewrite_object.dart';

/// Input properties used for looking up and filtering BatchOperationsJob resources.
class BatchOperationsJobState {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketList>? bucketList;

  /// The time that the job was completed.
  final pulumi.Input<String>? completeTime;

  /// The timestamp at which this storage batch operation was created.
  final pulumi.Input<String>? createTime;

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

  /// The time that the job was scheduled.
  final pulumi.Input<String>? scheduleTime;

  /// State of the job.
  final pulumi.Input<String>? state;

  /// The timestamp at which this storage batch operation was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BatchOperationsJobState].
  /// [bucketList] List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// [completeTime] The time that the job was completed.
  /// [createTime] The timestamp at which this storage batch operation was created.
  /// [deleteObject] allows batch operations to delete objects in bucket
  /// [deleteProtection] If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  /// [jobId] The ID of the job.
  /// [project] The ID of the project in which the resource belongs.
  /// [putMetadata] allows batch operations to update metadata for objects in bucket
  /// [putObjectHold] allows to update temporary hold or eventBased hold for objects in bucket.
  /// [rewriteObject] allows to update encryption key for objects in bucket.
  /// [scheduleTime] The time that the job was scheduled.
  /// [state] State of the job.
  /// [updateTime] The timestamp at which this storage batch operation was most recently updated.
  BatchOperationsJobState({
    this.bucketList,
    this.completeTime,
    this.createTime,
    this.deleteObject,
    this.deleteProtection,
    this.jobId,
    this.project,
    this.putMetadata,
    this.putObjectHold,
    this.rewriteObject,
    this.scheduleTime,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketList':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobBucketList,
            Map<String, dynamic>
          >(bucketList, (value) => value.toMap()),
      'completeTime': ?completeTime,
      'createTime': ?createTime,
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
      'scheduleTime': ?scheduleTime,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory BatchOperationsJobState.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobState(
      bucketList: (() {
        final guardedValue = map['bucketList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchOperationsJobBucketList.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      completeTime: (() {
        final guardedValue = map['completeTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      scheduleTime: (() {
        final guardedValue = map['scheduleTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
