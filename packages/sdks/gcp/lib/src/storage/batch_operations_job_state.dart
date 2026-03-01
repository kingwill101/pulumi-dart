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
    pulumi.Output<BatchOperationsJobBucketList>? bucketList,
    pulumi.Output<String>? completeTime,
    pulumi.Output<String>? createTime,
    pulumi.Output<BatchOperationsJobDeleteObject>? deleteObject,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? project,
    pulumi.Output<BatchOperationsJobPutMetadata>? putMetadata,
    pulumi.Output<BatchOperationsJobPutObjectHold>? putObjectHold,
    pulumi.Output<BatchOperationsJobRewriteObject>? rewriteObject,
    pulumi.Output<String>? scheduleTime,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      bucketList = pulumi.Input.asOptionalInput<BatchOperationsJobBucketList>(bucketList),
      completeTime = pulumi.Input.asOptionalInput<String>(completeTime),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteObject = pulumi.Input.asOptionalInput<BatchOperationsJobDeleteObject>(deleteObject),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      project = pulumi.Input.asOptionalInput<String>(project),
      putMetadata = pulumi.Input.asOptionalInput<BatchOperationsJobPutMetadata>(putMetadata),
      putObjectHold = pulumi.Input.asOptionalInput<BatchOperationsJobPutObjectHold>(putObjectHold),
      rewriteObject = pulumi.Input.asOptionalInput<BatchOperationsJobRewriteObject>(rewriteObject),
      scheduleTime = pulumi.Input.asOptionalInput<String>(scheduleTime),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketList': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobBucketList, Map<String, dynamic>>(bucketList, (value) => value.toMap()),
      'completeTime': ?completeTime,
      'createTime': ?createTime,
      'deleteObject': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobDeleteObject, Map<String, dynamic>>(deleteObject, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'jobId': ?jobId,
      'project': ?project,
      'putMetadata': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobPutMetadata, Map<String, dynamic>>(putMetadata, (value) => value.toMap()),
      'putObjectHold': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobPutObjectHold, Map<String, dynamic>>(putObjectHold, (value) => value.toMap()),
      'rewriteObject': ?pulumi.Input.mapOptionalInputValue<BatchOperationsJobRewriteObject, Map<String, dynamic>>(rewriteObject, (value) => value.toMap()),
      'scheduleTime': ?scheduleTime,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory BatchOperationsJobState.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobState(
      bucketList: map['bucketList'] == null ? null : pulumi.Output.create<BatchOperationsJobBucketList>(BatchOperationsJobBucketList.fromMap((map['bucketList'] as Map).cast<String, dynamic>())),
      completeTime: map['completeTime'] == null ? null : pulumi.Output.create<String>(map['completeTime'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteObject: map['deleteObject'] == null ? null : pulumi.Output.create<BatchOperationsJobDeleteObject>(BatchOperationsJobDeleteObject.fromMap((map['deleteObject'] as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      putMetadata: map['putMetadata'] == null ? null : pulumi.Output.create<BatchOperationsJobPutMetadata>(BatchOperationsJobPutMetadata.fromMap((map['putMetadata'] as Map).cast<String, dynamic>())),
      putObjectHold: map['putObjectHold'] == null ? null : pulumi.Output.create<BatchOperationsJobPutObjectHold>(BatchOperationsJobPutObjectHold.fromMap((map['putObjectHold'] as Map).cast<String, dynamic>())),
      rewriteObject: map['rewriteObject'] == null ? null : pulumi.Output.create<BatchOperationsJobRewriteObject>(BatchOperationsJobRewriteObject.fromMap((map['rewriteObject'] as Map).cast<String, dynamic>())),
      scheduleTime: map['scheduleTime'] == null ? null : pulumi.Output.create<String>(map['scheduleTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

