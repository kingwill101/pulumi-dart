// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_get_data_analytics_data_agent_iam_policy_get_data_analytics_data_agent_iam_policy_args_doc}
/// Arguments for getDataAnalyticsDataAgentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gemini_get_data_analytics_data_agent_iam_policy_get_data_analytics_data_agent_iam_policy_args_doc}
class GetDataAnalyticsDataAgentIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataAgentId;
  /// The location of the DataAgent. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetDataAnalyticsDataAgentIamPolicyArgs].
  /// [dataAgentId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location of the DataAgent. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  const GetDataAnalyticsDataAgentIamPolicyArgs({
    required this.dataAgentId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAgentId': dataAgentId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataAnalyticsDataAgentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataAnalyticsDataAgentIamPolicyArgs(
      dataAgentId: pulumi.Input.fromValue(map['dataAgentId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
