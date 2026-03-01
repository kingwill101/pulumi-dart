// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_path_map_response.dart';

/// metadata of a repository.
class RepositoryResponse {
  /// Branch name of repository.
  final String? branch;
  /// Url to access repository action logs.
  final String? deploymentLogsUrl;
  /// Display url of repository.
  final String? displayUrl;
  /// Dictionary of source control content type and path mapping.
  final List<ContentPathMapResponse>? pathMapping;
  /// Url of repository.
  final String? url;

  /// Creates a new [RepositoryResponse].
  /// [branch] Branch name of repository.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [displayUrl] Display url of repository.
  /// [pathMapping] Dictionary of source control content type and path mapping.
  /// [url] Url of repository.
  RepositoryResponse({
    this.branch,
    this.deploymentLogsUrl,
    this.displayUrl,
    this.pathMapping,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'deploymentLogsUrl': ?deploymentLogsUrl,
      'displayUrl': ?displayUrl,
      'pathMapping': ?pathMapping == null ? null : pulumi.Input.encodeList<ContentPathMapResponse, Map<String, dynamic>>(pathMapping!, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory RepositoryResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryResponse(
      branch: map['branch'] == null ? null : map['branch'] as String,
      deploymentLogsUrl: map['deploymentLogsUrl'] == null ? null : map['deploymentLogsUrl'] as String,
      displayUrl: map['displayUrl'] == null ? null : map['displayUrl'] as String,
      pathMapping: map['pathMapping'] == null ? null : pulumi.Input.decodeList<ContentPathMapResponse>(map['pathMapping'], (value) => ContentPathMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

