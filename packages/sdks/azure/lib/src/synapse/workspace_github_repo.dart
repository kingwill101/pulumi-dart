// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceGithubRepo {
  /// Specifies the GitHub account name.
  final pulumi.Input<String> accountName;
  /// Specifies the collaboration branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// Specifies the GitHub Enterprise host name. For example: &lt;https://github.mydomain.com&gt;.
  ///
  /// &gt; **Note:** You must log in to the Synapse UI to complete the authentication to the GitHub repository.
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
  /// [gitUrl] Specifies the GitHub Enterprise host name. For example: &lt;https://github.mydomain.com&gt;.
  /// [lastCommitId] The last commit ID.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  const WorkspaceGithubRepo({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      gitUrl: (() { final guardedValue = map['gitUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastCommitId: (() { final guardedValue = map['lastCommitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
    );
  }
}
