// ignore_for_file: unused_element, unnecessary_cast


class GetFactoryVstsConfiguration {
  /// The VSTS account name.
  final String accountName;
  /// The branch of the repository to get code from.
  final String branchName;
  /// The name of the VSTS project.
  final String projectName;
  /// The name of the git repository.
  final String repositoryName;
  /// The root folder within the repository.
  final String rootFolder;
  /// The Tenant ID associated with the VSTS account.
  final String tenantId;

  /// Creates a new [GetFactoryVstsConfiguration].
  /// [accountName] The VSTS account name.
  /// [branchName] The branch of the repository to get code from.
  /// [projectName] The name of the VSTS project.
  /// [repositoryName] The name of the git repository.
  /// [rootFolder] The root folder within the repository.
  /// [tenantId] The Tenant ID associated with the VSTS account.
  GetFactoryVstsConfiguration({
    required this.accountName,
    required this.branchName,
    required this.projectName,
    required this.repositoryName,
    required this.rootFolder,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'projectName': projectName,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': tenantId,
    };
  }

  factory GetFactoryVstsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFactoryVstsConfiguration(
      accountName: map['accountName'] as String,
      branchName: map['branchName'] as String,
      projectName: map['projectName'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

