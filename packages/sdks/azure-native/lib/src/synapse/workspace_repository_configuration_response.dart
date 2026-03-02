// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git integration settings
class WorkspaceRepositoryConfigurationResponse {
  /// Account name
  final pulumi.Input<String>? accountName;
  /// Collaboration branch
  final pulumi.Input<String>? collaborationBranch;
  /// GitHub Enterprise host name. For example: `https://github.mydomain.com`
  final pulumi.Input<String>? hostName;
  /// The last commit ID
  final pulumi.Input<String>? lastCommitId;
  /// VSTS project name
  final pulumi.Input<String>? projectName;
  /// Repository name
  final pulumi.Input<String>? repositoryName;
  /// Root folder to use in the repository
  final pulumi.Input<String>? rootFolder;
  /// The VSTS tenant ID
  final pulumi.Input<String>? tenantId;
  /// Type of workspace repositoryID configuration. Example WorkspaceVSTSConfiguration, WorkspaceGitHubConfiguration
  final pulumi.Input<String>? type;

  /// Creates a new [WorkspaceRepositoryConfigurationResponse].
  /// [accountName] Account name
  /// [collaborationBranch] Collaboration branch
  /// [hostName] GitHub Enterprise host name. For example: `https://github.mydomain.com`
  /// [lastCommitId] The last commit ID
  /// [projectName] VSTS project name
  /// [repositoryName] Repository name
  /// [rootFolder] Root folder to use in the repository
  /// [tenantId] The VSTS tenant ID
  /// [type] Type of workspace repositoryID configuration. Example WorkspaceVSTSConfiguration, WorkspaceGitHubConfiguration
  WorkspaceRepositoryConfigurationResponse({
    this.accountName,
    this.collaborationBranch,
    this.hostName,
    this.lastCommitId,
    this.projectName,
    this.repositoryName,
    this.rootFolder,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'collaborationBranch': ?collaborationBranch,
      'hostName': ?hostName,
      'lastCommitId': ?lastCommitId,
      'projectName': ?projectName,
      'repositoryName': ?repositoryName,
      'rootFolder': ?rootFolder,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory WorkspaceRepositoryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceRepositoryConfigurationResponse(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      collaborationBranch: map['collaborationBranch'] == null ? null : (map['collaborationBranch']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      lastCommitId: map['lastCommitId'] == null ? null : (map['lastCommitId']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName']! as String).input(),
      rootFolder: map['rootFolder'] == null ? null : (map['rootFolder']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

