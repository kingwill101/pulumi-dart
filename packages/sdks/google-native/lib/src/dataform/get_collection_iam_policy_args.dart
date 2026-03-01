// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_collection_iam_policy_args_doc}
/// Arguments for getCollectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_collection_iam_policy_args_doc}
class GetCollectionIamPolicyArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCollectionIamPolicyArgs].
  /// [collectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCollectionIamPolicyArgs({
    required pulumi.Output<String> collectionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCollectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectionIamPolicyArgs(
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

