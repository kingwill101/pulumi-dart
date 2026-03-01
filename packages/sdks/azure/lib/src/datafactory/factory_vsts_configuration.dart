// ignore_for_file: unused_element, unnecessary_cast


class FactoryVstsConfiguration {
  /// Specifies the VSTS account name.
  final String accountName;
  /// Specifies the branch of the repository to get code from.
  final String branchName;
  /// Specifies the name of the VSTS project.
  final String projectName;
  /// Is automated publishing enabled? Defaults to `true`.
  final bool? publishingEnabled;
  /// Specifies the name of the git repository.
  final String repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final String rootFolder;
  /// Specifies the Tenant ID associated with the VSTS account.
  final String tenantId;

  /// Creates a new [FactoryVstsConfiguration].
  /// [accountName] Specifies the VSTS account name.
  /// [branchName] Specifies the branch of the repository to get code from.
  /// [projectName] Specifies the name of the VSTS project.
  /// [publishingEnabled] Is automated publishing enabled? Defaults to `true`.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  /// [tenantId] Specifies the Tenant ID associated with the VSTS account.
  FactoryVstsConfiguration({
    required this.accountName,
    required this.branchName,
    required this.projectName,
    this.publishingEnabled,
    required this.repositoryName,
    required this.rootFolder,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'projectName': projectName,
      'publishingEnabled': ?publishingEnabled,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': tenantId,
    };
  }

  factory FactoryVstsConfiguration.fromMap(Map<String, dynamic> map) {
    return FactoryVstsConfiguration(
      accountName: map['accountName'] as String,
      branchName: map['branchName'] as String,
      projectName: map['projectName'] as String,
      publishingEnabled: map['publishingEnabled'] == null ? null : map['publishingEnabled'] as bool,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

