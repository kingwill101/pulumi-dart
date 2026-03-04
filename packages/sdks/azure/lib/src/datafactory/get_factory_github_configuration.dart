// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFactoryGithubConfiguration {
  /// The VSTS account name.
  final pulumi.Input<String> accountName;

  /// The branch of the repository to get code from.
  final pulumi.Input<String> branchName;

  /// The GitHub repository url.
  final pulumi.Input<String> gitUrl;

  /// The name of the git repository.
  final pulumi.Input<String> repositoryName;

  /// The root folder within the repository.
  final pulumi.Input<String> rootFolder;

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      gitUrl: pulumi.Input.fromValue(map['gitUrl'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
    );
  }
}
