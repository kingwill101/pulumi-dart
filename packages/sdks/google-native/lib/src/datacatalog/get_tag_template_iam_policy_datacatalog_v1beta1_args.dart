// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_tag_template_iam_policy_datacatalog_v1beta1_args_doc}
/// Arguments for getTagTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_tag_template_iam_policy_datacatalog_v1beta1_args_doc}
class GetTagTemplateIamPolicyDatacatalogV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [GetTagTemplateIamPolicyDatacatalogV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tagTemplateId] Required.
  GetTagTemplateIamPolicyDatacatalogV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tagTemplateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tagTemplateId = pulumi.Input.asInput<String>(tagTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory GetTagTemplateIamPolicyDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateIamPolicyDatacatalogV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tagTemplateId: pulumi.Output.create<String>(map['tagTemplateId'] as String),
    );
  }
}

