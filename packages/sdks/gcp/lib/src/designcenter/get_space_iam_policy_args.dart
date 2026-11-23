// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_designcenter_get_space_iam_policy_get_space_iam_policy_args_doc}
/// Arguments for getSpaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_designcenter_get_space_iam_policy_get_space_iam_policy_args_doc}
class GetSpaceIamPolicyArgs {
  /// The location of the space. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> spaceId;

  /// Creates a new [GetSpaceIamPolicyArgs].
  /// [location] The location of the space. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [spaceId] Used to find the parent resource to bind the IAM policy to
  const GetSpaceIamPolicyArgs({
    this.location,
    this.project,
    required this.spaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'spaceId': spaceId,
    };
  }

  factory GetSpaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSpaceIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
    );
  }
}
