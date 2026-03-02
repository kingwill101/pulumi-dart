// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceGithubRepo {
  /// Specifies the GitHub account name.
  final pulumi.Input<String> accountName;
  /// Specifies the collaboration branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>.
  ///
  /// > **Note:** You must log in to the Synapse UI to complete the authentication to the GitHub repository.
  final pulumi.Input<String>? gitUrl;
  /// The last commit ID.
  final pulumi.Input<String>? lastCommitId;
  /// Specifies the name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final pulumi.Input<String> rootFolder;

  /// Creates a new [WorkspaceGithubRepo].
  /// [accountName] Specifies the GitHub account name.
  /// [branchName] Specifies the collaboration branch of the repository to get code from.
  /// [gitUrl] Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>.
  /// [lastCommitId] The last commit ID.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  WorkspaceGithubRepo({
    required this.accountName,
    required this.branchName,
    this.gitUrl,
    this.lastCommitId,
    required this.repositoryName,
    required this.rootFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'gitUrl': ?gitUrl,
      'lastCommitId': ?lastCommitId,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
    };
  }

  factory WorkspaceGithubRepo.fromMap(Map<String, dynamic> map) {
    return WorkspaceGithubRepo(
      accountName: (map['accountName'] as String).input(),
      branchName: (map['branchName'] as String).input(),
      gitUrl: map['gitUrl'] == null ? null : (map['gitUrl']! as String).input(),
      lastCommitId: map['lastCommitId'] == null ? null : (map['lastCommitId']! as String).input(),
      repositoryName: (map['repositoryName'] as String).input(),
      rootFolder: (map['rootFolder'] as String).input(),
    );
  }
}

