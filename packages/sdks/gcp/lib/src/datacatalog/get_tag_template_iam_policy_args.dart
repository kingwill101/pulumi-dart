// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_tag_template_iam_policy_get_tag_template_iam_policy_args_doc}
/// Arguments for getTagTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_tag_template_iam_policy_get_tag_template_iam_policy_args_doc}
class GetTagTemplateIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Template location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tagTemplate;

  /// Creates a new [GetTagTemplateIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Template location region.
  /// [tagTemplate] Used to find the parent resource to bind the IAM policy to
  const GetTagTemplateIamPolicyArgs({
    this.project,
    this.region,
    required this.tagTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'tagTemplate': tagTemplate,
    };
  }

  factory GetTagTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagTemplate: pulumi.Input.fromValue(map['tagTemplate'] as String),
    );
  }
}
