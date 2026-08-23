// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_lake_iam_policy_get_lake_iam_policy_args_doc}
/// Arguments for getLakeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_lake_iam_policy_get_lake_iam_policy_args_doc}
class GetLakeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> lake;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeIamPolicyArgs].
  /// [lake] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  const GetLakeIamPolicyArgs({
    required this.lake,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lake': lake,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetLakeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeIamPolicyArgs(
      lake: pulumi.Input.fromValue(map['lake'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
