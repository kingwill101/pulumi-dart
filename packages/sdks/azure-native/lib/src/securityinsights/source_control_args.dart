// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository.dart';
import 'repository_access.dart';
import 'repository_resource_info.dart';
import 'service_principal.dart';

/// {@template pulumi_securityinsights_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_source_control_args_doc}
class SourceControlArgs {
  /// Array of source control content types.
  final pulumi.Input<List<String>> contentTypes;
  /// A description of the source control
  final pulumi.Input<String>? description;
  /// The display name of the source control
  final pulumi.Input<String> displayName;
  /// The repository type of the source control
  final pulumi.Input<String> repoType;
  /// Repository metadata.
  final pulumi.Input<Repository> repository;
  /// Repository access credentials. This is write-only object and it never returns back to a user.
  final pulumi.Input<RepositoryAccess>? repositoryAccess;
  /// Information regarding the resources created in user's repository.
  final pulumi.Input<RepositoryResourceInfo>? repositoryResourceInfo;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Service principal metadata.
  final pulumi.Input<ServicePrincipal>? servicePrincipal;
  /// Source control Id
  final pulumi.Input<String>? sourceControlId;
  /// The name of the monitor workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SourceControlArgs].
  /// [contentTypes] Array of source control content types.
  /// [description] A description of the source control
  /// [displayName] The display name of the source control
  /// [repoType] The repository type of the source control
  /// [repository] Repository metadata.
  /// [repositoryAccess] Repository access credentials. This is write-only object and it never returns back to a user.
  /// [repositoryResourceInfo] Information regarding the resources created in user's repository.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [servicePrincipal] Service principal metadata.
  /// [sourceControlId] Source control Id
  /// [workspaceName] The name of the monitor workspace.
  const SourceControlArgs({
    required this.contentTypes,
    this.description,
    required this.displayName,
    required this.repoType,
    required this.repository,
    this.repositoryAccess,
    this.repositoryResourceInfo,
    required this.resourceGroupName,
    this.servicePrincipal,
    this.sourceControlId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
      'description': ?description,
      'displayName': displayName,
      'repoType': repoType,
      'repository': pulumi.Input.mapInputValue<Repository, Map<String, dynamic>>(repository, (value) => value.toMap()),
      'repositoryAccess': ?pulumi.Input.mapOptionalInputValue<RepositoryAccess, Map<String, dynamic>>(repositoryAccess, (value) => value.toMap()),
      'repositoryResourceInfo': ?pulumi.Input.mapOptionalInputValue<RepositoryResourceInfo, Map<String, dynamic>>(repositoryResourceInfo, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'sourceControlId': ?sourceControlId,
      'workspaceName': workspaceName,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      contentTypes: pulumi.Input.fromValue((map['contentTypes'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      repository: pulumi.Input.fromValue(Repository.fromMap((map['repository']! as Map).cast<String, dynamic>())),
      repositoryAccess: (() { final guardedValue = map['repositoryAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryResourceInfo: (() { final guardedValue = map['repositoryResourceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryResourceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceControlId: (() { final guardedValue = map['sourceControlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
