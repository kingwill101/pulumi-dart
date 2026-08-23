// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
/// Arguments for getFeaturestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
class GetFeaturestoreIamPolicyArgs {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreIamPolicyArgs].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetFeaturestoreIamPolicyArgs({
    required this.featurestoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreId': featurestoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFeaturestoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreIamPolicyArgs(
      featurestoreId: pulumi.Input.fromValue(map['featurestoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
