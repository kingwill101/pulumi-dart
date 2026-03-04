// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_colab_get_runtime_template_iam_policy_get_runtime_template_iam_policy_args_doc}
/// Arguments for getRuntimeTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_colab_get_runtime_template_iam_policy_get_runtime_template_iam_policy_args_doc}
class GetRuntimeTemplateIamPolicyArgs {
  /// The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> runtimeTemplate;

  /// Creates a new [GetRuntimeTemplateIamPolicyArgs].
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeTemplate] Used to find the parent resource to bind the IAM policy to
  GetRuntimeTemplateIamPolicyArgs({
    this.location,
    this.project,
    required this.runtimeTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'runtimeTemplate': runtimeTemplate,
    };
  }

  factory GetRuntimeTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeTemplateIamPolicyArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeTemplate: pulumi.Input.fromValue(map['runtimeTemplate'] as String),
    );
  }
}
