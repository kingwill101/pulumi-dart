// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// metadata of a repository.
class RepositoryResponse {
  /// Branch name of repository.
  final pulumi.Input<String> branch;
  /// Url to access repository action logs.
  final pulumi.Input<String> deploymentLogsUrl;
  /// Display url of repository.
  final pulumi.Input<String?>? displayUrl;
  /// Url of repository.
  final pulumi.Input<String> url;

  /// Creates a new [RepositoryResponse].
  /// [branch] Branch name of repository.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [displayUrl] Display url of repository.
  /// [url] Url of repository.
  const RepositoryResponse({
    required this.branch,
    required this.deploymentLogsUrl,
    this.displayUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'deploymentLogsUrl': deploymentLogsUrl,
      'displayUrl': ?displayUrl,
      'url': url,
    };
  }

  factory RepositoryResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryResponse(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      deploymentLogsUrl: pulumi.Input.fromValue(map['deploymentLogsUrl'] as String),
      displayUrl: (() { final guardedValue = map['displayUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
