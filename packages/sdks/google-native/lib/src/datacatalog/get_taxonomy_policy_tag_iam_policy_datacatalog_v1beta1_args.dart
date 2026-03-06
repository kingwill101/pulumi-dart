// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_taxonomy_policy_tag_iam_policy_datacatalog_v1beta1_args_doc}
/// Arguments for getTaxonomyPolicyTagIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_taxonomy_policy_tag_iam_policy_datacatalog_v1beta1_args_doc}
class GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> policyTagId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args].
  /// [location] Required.
  /// [policyTagId] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  const GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args({
    required this.location,
    required this.policyTagId,
    this.project,
    required this.taxonomyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'policyTagId': policyTagId,
      'project': ?project,
      'taxonomyId': taxonomyId,
    };
  }

  factory GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      policyTagId: pulumi.Input.fromValue(map['policyTagId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxonomyId: pulumi.Input.fromValue(map['taxonomyId'] as String),
    );
  }
}

