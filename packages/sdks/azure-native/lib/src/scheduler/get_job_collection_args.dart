// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scheduler_get_job_collection_args_doc}
/// Arguments for getJobCollection.
/// {@endtemplate}
/// {@macro pulumi_scheduler_get_job_collection_args_doc}
class GetJobCollectionArgs {
  /// The job collection name.
  final pulumi.Input<String> jobCollectionName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobCollectionArgs].
  /// [jobCollectionName] The job collection name.
  /// [resourceGroupName] The resource group name.
  GetJobCollectionArgs({
    required this.jobCollectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': jobCollectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetJobCollectionArgs(
      jobCollectionName: pulumi.Input.fromValue(map['jobCollectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

