// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_feature_group_iam_policy_get_ai_feature_group_iam_policy_args_doc}
/// Arguments for getAiFeatureGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_feature_group_iam_policy_get_ai_feature_group_iam_policy_args_doc}
class GetAiFeatureGroupIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featureGroup;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of feature group. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAiFeatureGroupIamPolicyArgs].
  /// [featureGroup] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of feature group. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  GetAiFeatureGroupIamPolicyArgs({
    required pulumi.Output<String> featureGroup,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      featureGroup = pulumi.Input.asInput<String>(featureGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroup': featureGroup,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAiFeatureGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiFeatureGroupIamPolicyArgs(
      featureGroup: pulumi.Output.create<String>(map['featureGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

