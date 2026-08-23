// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_featurestore_iam_policy_aiplatform_v1beta1_args_doc}
/// Arguments for getFeaturestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_featurestore_iam_policy_aiplatform_v1beta1_args_doc}
class GetFeaturestoreIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreIamPolicyAiplatformV1beta1Args].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetFeaturestoreIamPolicyAiplatformV1beta1Args({
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeaturestoreIamPolicyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreIamPolicyAiplatformV1beta1Args(
      featurestoreId: pulumi.Input.fromValue(map['featurestoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
