// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_taxonomy_iam_policy_args_doc}
/// Arguments for getDataTaxonomyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_taxonomy_iam_policy_args_doc}
class GetDataTaxonomyIamPolicyArgs {
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataTaxonomyIamPolicyArgs].
  /// [dataTaxonomyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDataTaxonomyIamPolicyArgs({
    required pulumi.Output<String> dataTaxonomyId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTaxonomyId': dataTaxonomyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDataTaxonomyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyIamPolicyArgs(
      dataTaxonomyId: pulumi.Output.create<String>(map['dataTaxonomyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

