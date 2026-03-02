// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_path_map.dart';

/// metadata of a repository.
class Repository {
  /// Branch name of repository.
  final pulumi.Input<String>? branch;
  /// Url to access repository action logs.
  final pulumi.Input<String>? deploymentLogsUrl;
  /// Display url of repository.
  final pulumi.Input<String>? displayUrl;
  /// Dictionary of source control content type and path mapping.
  final pulumi.Input<List<ContentPathMap>>? pathMapping;
  /// Url of repository.
  final pulumi.Input<String>? url;

  /// Creates a new [Repository].
  /// [branch] Branch name of repository.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [displayUrl] Display url of repository.
  /// [pathMapping] Dictionary of source control content type and path mapping.
  /// [url] Url of repository.
  Repository({
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
      'pathMapping': ?pulumi.Input.mapOptionalInputValue<List<ContentPathMap>, List<Map<String, dynamic>>>(pathMapping, (value) => pulumi.Input.encodeList<ContentPathMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': ?url,
    };
  }

  factory Repository.fromMap(Map<String, dynamic> map) {
    return Repository(
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      deploymentLogsUrl: map['deploymentLogsUrl'] == null ? null : (map['deploymentLogsUrl']! as String).input(),
      displayUrl: map['displayUrl'] == null ? null : (map['displayUrl']! as String).input(),
      pathMapping: map['pathMapping'] == null ? null : (pulumi.Input.decodeList<ContentPathMap>(map['pathMapping']!, (value) => ContentPathMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

