// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_get_repository_group_iam_policy_get_repository_group_iam_policy_args_doc}
/// Arguments for getRepositoryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gemini_get_repository_group_iam_policy_get_repository_group_iam_policy_args_doc}
class GetRepositoryGroupIamPolicyArgs {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> codeRepositoryIndex;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repositoryGroupId;

  /// Creates a new [GetRepositoryGroupIamPolicyArgs].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  /// [location] The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryGroupId] Used to find the parent resource to bind the IAM policy to
  GetRepositoryGroupIamPolicyArgs({
    required this.codeRepositoryIndex,
    this.location,
    this.project,
    required this.repositoryGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndex': codeRepositoryIndex,
      'location': ?location,
      'project': ?project,
      'repositoryGroupId': repositoryGroupId,
    };
  }

  factory GetRepositoryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryGroupIamPolicyArgs(
      codeRepositoryIndex: pulumi.Input.fromValue(
        map['codeRepositoryIndex'] as String,
      ),
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
      repositoryGroupId: pulumi.Input.fromValue(
        map['repositoryGroupId'] as String,
      ),
    );
  }
}
