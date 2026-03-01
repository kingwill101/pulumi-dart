// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceAzureDevopsRepo {
  /// Specifies the Azure DevOps account name.
  final String accountName;
  /// Specifies the collaboration branch of the repository to get code from.
  final String branchName;
  /// The last commit ID.
  final String? lastCommitId;
  /// Specifies the name of the Azure DevOps project.
  final String projectName;
  /// Specifies the name of the git repository.
  final String repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final String rootFolder;
  /// the ID of the tenant for the Azure DevOps account.
  final String? tenantId;

  /// Creates a new [WorkspaceAzureDevopsRepo].
  /// [accountName] Specifies the Azure DevOps account name.
  /// [branchName] Specifies the collaboration branch of the repository to get code from.
  /// [lastCommitId] The last commit ID.
  /// [projectName] Specifies the name of the Azure DevOps project.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  /// [tenantId] the ID of the tenant for the Azure DevOps account.
  WorkspaceAzureDevopsRepo({
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
      accountName: map['accountName'] as String,
      branchName: map['branchName'] as String,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      projectName: map['projectName'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

