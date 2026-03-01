// ignore_for_file: unused_element, unnecessary_cast


class GetFactoryGithubConfiguration {
  /// The VSTS account name.
  final String accountName;
  /// The branch of the repository to get code from.
  final String branchName;
  /// The GitHub repository url.
  final String gitUrl;
  /// The name of the git repository.
  final String repositoryName;
  /// The root folder within the repository.
  final String rootFolder;

  /// Creates a new [GetFactoryGithubConfiguration].
  /// [accountName] The VSTS account name.
  /// [branchName] The branch of the repository to get code from.
  /// [gitUrl] The GitHub repository url.
  /// [repositoryName] The name of the git repository.
  /// [rootFolder] The root folder within the repository.
  GetFactoryGithubConfiguration({
    required this.accountName,
    required this.branchName,
    required this.gitUrl,
    required this.repositoryName,
    required this.rootFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'gitUrl': gitUrl,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
    };
  }

  factory GetFactoryGithubConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFactoryGithubConfiguration(
      accountName: map['accountName'] as String,
      branchName: map['branchName'] as String,
      gitUrl: map['gitUrl'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
    );
  }
}

