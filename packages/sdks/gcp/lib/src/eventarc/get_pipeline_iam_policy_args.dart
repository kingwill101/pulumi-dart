// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_get_pipeline_iam_policy_get_pipeline_iam_policy_args_doc}
/// Arguments for getPipelineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_eventarc_get_pipeline_iam_policy_get_pipeline_iam_policy_args_doc}
class GetPipelineIamPolicyArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> pipelineId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetPipelineIamPolicyArgs].
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [pipelineId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetPipelineIamPolicyArgs({
    this.location,
    required this.pipelineId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'pipelineId': pipelineId,
      'project': ?project,
    };
  }

  factory GetPipelineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: pulumi.Input.fromValue(map['pipelineId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
