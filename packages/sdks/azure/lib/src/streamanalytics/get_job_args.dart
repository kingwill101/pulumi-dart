// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_job_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_job_get_job_args_doc}
class GetJobArgs {
  /// Specifies the name of the Stream Analytics Job.
  final pulumi.Input<String> name;

  /// Specifies the name of the resource group the Stream Analytics Job is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobArgs].
  /// [name] Specifies the name of the Stream Analytics Job.
  /// [resourceGroupName] Specifies the name of the resource group the Stream Analytics Job is located in.
  GetJobArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
