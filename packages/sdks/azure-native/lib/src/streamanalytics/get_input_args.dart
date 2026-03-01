// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_input_args_doc}
/// Arguments for getInput.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_input_args_doc}
class GetInputArgs {
  /// The name of the input.
  final pulumi.Input<String> inputName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInputArgs].
  /// [inputName] The name of the input.
  /// [jobName] The name of the streaming job.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetInputArgs({
    required pulumi.Output<String> inputName,
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      inputName = pulumi.Input.asInput<String>(inputName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputName': inputName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInputArgs.fromMap(Map<String, dynamic> map) {
    return GetInputArgs(
      inputName: pulumi.Output.create<String>(map['inputName'] as String),
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

