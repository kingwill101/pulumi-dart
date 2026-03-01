// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_feature_iam_policy_get_feature_iam_policy_args_doc}
/// Arguments for getFeatureIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_feature_iam_policy_get_feature_iam_policy_args_doc}
class GetFeatureIamPolicyArgs {
  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureIamPolicyArgs].
  /// [location] The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetFeatureIamPolicyArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetFeatureIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureIamPolicyArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

