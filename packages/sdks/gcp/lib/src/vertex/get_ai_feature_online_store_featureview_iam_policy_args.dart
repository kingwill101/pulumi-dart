// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_feature_online_store_featureview_iam_policy_get_ai_feature_online_store_featureview_iam_policy_args_doc}
/// Arguments for getAiFeatureOnlineStoreFeatureviewIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_feature_online_store_featureview_iam_policy_get_ai_feature_online_store_featureview_iam_policy_args_doc}
class GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs {
  /// The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featureOnlineStore;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featureView;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs].
  /// [featureOnlineStore] The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  /// [featureView] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs({
    required this.featureOnlineStore,
    required this.featureView,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStore': featureOnlineStore,
      'featureView': featureView,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs(
      featureOnlineStore: (map['featureOnlineStore'] as String).input(),
      featureView: (map['featureView'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

