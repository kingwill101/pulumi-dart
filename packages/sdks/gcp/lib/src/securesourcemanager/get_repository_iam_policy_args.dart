// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securesourcemanager_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// Arguments for getRepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_get_repository_iam_policy_get_repository_iam_policy_args_doc}
class GetRepositoryIamPolicyArgs {
  /// The location for the Repository.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryIamPolicyArgs].
  /// [location] The location for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] Used to find the parent resource to bind the IAM policy to
  const GetRepositoryIamPolicyArgs({
    this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetRepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
