// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceAzureDevopsRepo {
  /// Specifies the Azure DevOps account name.
  final pulumi.Input<String> accountName;
  /// Specifies the collaboration branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// The last commit ID.
  final pulumi.Input<String>? lastCommitId;
  /// Specifies the name of the Azure DevOps project.
  final pulumi.Input<String> projectName;
  /// Specifies the name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final pulumi.Input<String> rootFolder;
  /// the ID of the tenant for the Azure DevOps account.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [WorkspaceAzureDevopsRepo].
  /// [accountName] Specifies the Azure DevOps account name.
  /// [branchName] Specifies the collaboration branch of the repository to get code from.
  /// [lastCommitId] The last commit ID.
  /// [projectName] Specifies the name of the Azure DevOps project.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  /// [tenantId] the ID of the tenant for the Azure DevOps account.
  const WorkspaceAzureDevopsRepo({
    required this.accountName,
    required this.branchName,
    this.lastCommitId,
    required this.projectName,
    required this.repositoryName,
    required this.rootFolder,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'lastCommitId': ?lastCommitId,
      'projectName': projectName,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': ?tenantId,
    };
  }

  factory WorkspaceAzureDevopsRepo.fromMap(Map<String, dynamic> map) {
    return WorkspaceAzureDevopsRepo(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      lastCommitId: (() { final guardedValue = map['lastCommitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

