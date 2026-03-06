// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_taxonomy_iam_policy_get_taxonomy_iam_policy_args_doc}
/// Arguments for getTaxonomyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_taxonomy_iam_policy_get_taxonomy_iam_policy_args_doc}
class GetTaxonomyIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Taxonomy location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> taxonomy;

  /// Creates a new [GetTaxonomyIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Taxonomy location region.
  /// [taxonomy] Used to find the parent resource to bind the IAM policy to
  const GetTaxonomyIamPolicyArgs({
    this.project,
    this.region,
    required this.taxonomy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'taxonomy': taxonomy,
    };
  }

  factory GetTaxonomyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxonomy: pulumi.Input.fromValue(map['taxonomy'] as String),
    );
  }
}

