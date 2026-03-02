// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_feature_online_store_iam_policy_get_ai_feature_online_store_iam_policy_args_doc}
/// Arguments for getAiFeatureOnlineStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_feature_online_store_iam_policy_get_ai_feature_online_store_iam_policy_args_doc}
class GetAiFeatureOnlineStoreIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featureOnlineStore;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of feature online store. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAiFeatureOnlineStoreIamPolicyArgs].
  /// [featureOnlineStore] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of feature online store. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  GetAiFeatureOnlineStoreIamPolicyArgs({
    required this.featureOnlineStore,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStore': featureOnlineStore,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAiFeatureOnlineStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiFeatureOnlineStoreIamPolicyArgs(
      featureOnlineStore: (map['featureOnlineStore'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

