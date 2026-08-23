// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// metadata of a repository.
class Repository {
  /// Branch name of repository.
  final pulumi.Input<String> branch;
  /// Display url of repository.
  final pulumi.Input<String>? displayUrl;
  /// Url of repository.
  final pulumi.Input<String> url;

  /// Creates a new [Repository].
  /// [branch] Branch name of repository.
  /// [displayUrl] Display url of repository.
  /// [url] Url of repository.
  const Repository({
    required this.branch,
    this.displayUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'displayUrl': ?displayUrl,
      'url': url,
    };
  }

  factory Repository.fromMap(Map<String, dynamic> map) {
    return Repository(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      displayUrl: (() { final guardedValue = map['displayUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
