// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FactoryGithubConfiguration {
  /// Specifies the GitHub account name.
  final pulumi.Input<String> accountName;
  /// Specifies the branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// Specifies the GitHub Enterprise host name. For example: &lt;https://github.mydomain.com&gt;. Use &lt;https://github.com&gt; for open source repositories.
  final pulumi.Input<String>? gitUrl;
  /// Is automated publishing enabled? Defaults to `true`.
  ///
  /// &gt; **Note:** You must log in to the Data Factory management UI to complete the authentication to the GitHub repository.
  final pulumi.Input<bool>? publishingEnabled;
  /// Specifies the name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final pulumi.Input<String> rootFolder;

  /// Creates a new [FactoryGithubConfiguration].
  /// [accountName] Specifies the GitHub account name.
  /// [branchName] Specifies the branch of the repository to get code from.
  /// [gitUrl] Specifies the GitHub Enterprise host name. For example: &lt;https://github.mydomain.com&gt;. Use &lt;https://github.com&gt; for open source repositories.
  /// [publishingEnabled] Is automated publishing enabled? Defaults to `true`.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  const FactoryGithubConfiguration({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      gitUrl: (() { final guardedValue = map['gitUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishingEnabled: (() { final guardedValue = map['publishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
    );
  }
}

