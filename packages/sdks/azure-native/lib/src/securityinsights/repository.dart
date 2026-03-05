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
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentLogsUrl: (() { final guardedValue = map['deploymentLogsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayUrl: (() { final guardedValue = map['displayUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathMapping: (() { final guardedValue = map['pathMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContentPathMap>(guardedValue, (value) => ContentPathMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

