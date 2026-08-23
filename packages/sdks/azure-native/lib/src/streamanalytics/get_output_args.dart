// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_output_args_doc}
/// Arguments for getOutput.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_output_args_doc}
class GetOutputArgs {
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// The name of the output.
  final pulumi.Input<String> outputName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOutputArgs].
  /// [jobName] The name of the streaming job.
  /// [outputName] The name of the output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetOutputArgs({
    required this.jobName,
    required this.outputName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'outputName': outputName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOutputArgs.fromMap(Map<String, dynamic> map) {
    return GetOutputArgs(
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      outputName: pulumi.Input.fromValue(map['outputName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
