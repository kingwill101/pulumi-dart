// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args_doc}
/// Arguments for getFeaturestoreEntityTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args_doc}
class GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args].
  /// [entityTypeId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args({
    required pulumi.Output<String> entityTypeId,
    required pulumi.Output<String> featurestoreId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featurestoreId': featurestoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args(
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      featurestoreId: pulumi.Output.create<String>(map['featurestoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

