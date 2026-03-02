// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FactoryGithubConfiguration {
  /// Specifies the GitHub account name.
  final pulumi.Input<String> accountName;
  /// Specifies the branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. Use <https://github.com> for open source repositories.
  final pulumi.Input<String>? gitUrl;
  /// Is automated publishing enabled? Defaults to `true`.
  ///
  /// > **Note:** You must log in to the Data Factory management UI to complete the authentication to the GitHub repository.
  final pulumi.Input<bool>? publishingEnabled;
  /// Specifies the name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final pulumi.Input<String> rootFolder;

  /// Creates a new [FactoryGithubConfiguration].
  /// [accountName] Specifies the GitHub account name.
  /// [branchName] Specifies the branch of the repository to get code from.
  /// [gitUrl] Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. Use <https://github.com> for open source repositories.
  /// [publishingEnabled] Is automated publishing enabled? Defaults to `true`.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  FactoryGithubConfiguration({
    required this.accountName,
    required this.branchName,
    this.gitUrl,
    this.publishingEnabled,
    required this.repositoryName,
    required this.rootFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'gitUrl': ?gitUrl,
      'publishingEnabled': ?publishingEnabled,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
    };
  }

  factory FactoryGithubConfiguration.fromMap(Map<String, dynamic> map) {
    return FactoryGithubConfiguration(
      accountName: (map['accountName'] as String).input(),
      branchName: (map['branchName'] as String).input(),
      gitUrl: map['gitUrl'] == null ? null : (map['gitUrl'] as String).input(),
      publishingEnabled: map['publishingEnabled'] == null ? null : (map['publishingEnabled'] as bool).input(),
      repositoryName: (map['repositoryName'] as String).input(),
      rootFolder: (map['rootFolder'] as String).input(),
    );
  }
}

