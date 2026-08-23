// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_group_repository.dart';

/// {@template pulumi_gemini_repository_group_repository_group_args_doc}
/// The set of arguments for RepositoryGroup.
/// {@endtemplate}
/// {@macro pulumi_gemini_repository_group_repository_group_args_doc}
class RepositoryGroupArgs {
  /// Required. Id of the Code Repository Index.
  final pulumi.Input<String> codeRepositoryIndex;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Code Repository Index, for example `us-central1`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. List of repositories to group.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryGroupRepository>> repositories;
  /// Required. Id of the Repository Group.
  final pulumi.Input<String> repositoryGroupId;

  /// Creates a new [RepositoryGroupArgs].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The location of the Code Repository Index, for example `us-central1`.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositories] Required. List of repositories to group.
  /// [repositoryGroupId] Required. Id of the Repository Group.
  const RepositoryGroupArgs({
    required this.codeRepositoryIndex,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    required this.repositories,
    required this.repositoryGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndex': codeRepositoryIndex,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'repositories': pulumi.Input.mapInputValue<List<RepositoryGroupRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<RepositoryGroupRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'repositoryGroupId': repositoryGroupId,
    };
  }

  factory RepositoryGroupArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupArgs(
      codeRepositoryIndex: pulumi.Input.fromValue(map['codeRepositoryIndex'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositories: pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryGroupRepository>(map['repositories']!, (value) => RepositoryGroupRepository.fromMap((value as Map).cast<String, dynamic>()))),
      repositoryGroupId: pulumi.Input.fromValue(map['repositoryGroupId'] as String),
    );
  }
}
