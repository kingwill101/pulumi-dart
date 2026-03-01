// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_aspect_type_iam_policy_get_aspect_type_iam_policy_args_doc}
/// Arguments for getAspectTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_aspect_type_iam_policy_get_aspect_type_iam_policy_args_doc}
class GetAspectTypeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> aspectTypeId;
  /// The location where aspect type will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAspectTypeIamPolicyArgs].
  /// [aspectTypeId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location where aspect type will be created in.
  /// [project] The ID of the project in which the resource belongs.
  GetAspectTypeIamPolicyArgs({
    required pulumi.Output<String> aspectTypeId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      aspectTypeId = pulumi.Input.asInput<String>(aspectTypeId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': aspectTypeId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAspectTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAspectTypeIamPolicyArgs(
      aspectTypeId: pulumi.Output.create<String>(map['aspectTypeId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

