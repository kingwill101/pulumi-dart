// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
/// Arguments for getFeaturestoreEntityTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
class GetFeaturestoreEntityTypeIamPolicyArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreEntityTypeIamPolicyArgs].
  /// [entityTypeId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFeaturestoreEntityTypeIamPolicyArgs({
    required this.entityTypeId,
    required this.featurestoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featurestoreId': featurestoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFeaturestoreEntityTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityTypeIamPolicyArgs(
      entityTypeId: (map['entityTypeId'] as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

