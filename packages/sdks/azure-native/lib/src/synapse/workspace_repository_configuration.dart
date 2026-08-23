// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git integration settings
class WorkspaceRepositoryConfiguration {
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

  /// Creates a new [WorkspaceRepositoryConfiguration].
  /// [accountName] Account name
  /// [collaborationBranch] Collaboration branch
  /// [hostName] GitHub Enterprise host name. For example: `https://github.mydomain.com`
  /// [lastCommitId] The last commit ID
  /// [projectName] VSTS project name
  /// [repositoryName] Repository name
  /// [rootFolder] Root folder to use in the repository
  /// [tenantId] The VSTS tenant ID
  /// [type] Type of workspace repositoryID configuration. Example WorkspaceVSTSConfiguration, WorkspaceGitHubConfiguration
  const WorkspaceRepositoryConfiguration({
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

  factory WorkspaceRepositoryConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkspaceRepositoryConfiguration(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collaborationBranch: (() { final guardedValue = map['collaborationBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastCommitId: (() { final guardedValue = map['lastCommitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootFolder: (() { final guardedValue = map['rootFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
