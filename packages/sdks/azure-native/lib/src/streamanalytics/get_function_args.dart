// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_function_args_doc}
class GetFunctionArgs {
  /// The name of the function.
  final pulumi.Input<String> functionName;

  /// The name of the streaming job.
  final pulumi.Input<String> jobName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFunctionArgs].
  /// [functionName] The name of the function.
  /// [jobName] The name of the streaming job.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFunctionArgs({
    required this.functionName,
    required this.jobName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
